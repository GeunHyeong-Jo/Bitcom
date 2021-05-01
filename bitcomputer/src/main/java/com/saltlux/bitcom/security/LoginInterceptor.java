package com.saltlux.bitcom.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.saltlux.bitcom.service.UserService;
import com.saltlux.bitcom.vo.UserVo;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private UserService userService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		UserVo userVo = new UserVo();
		userVo.setUid(id);
		userVo.setUpassword(password);
	
		UserVo authUser = userService.getUser(userVo);		
		if(authUser == null) {
			System.out.println("session 생성 실패");
			response.sendRedirect(request.getContextPath() +"/user/login?result=fail");
			return false;
		}
		System.out.println("session 생성됨");
		// session 처리
		
		HttpSession session = request.getSession(true);
		session.setAttribute("authUser", authUser);
		response.sendRedirect(request.getContextPath());
		
		return false;
	}

}
