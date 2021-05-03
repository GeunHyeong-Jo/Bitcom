package com.saltlux.bitcom.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.saltlux.bitcom.vo.UserVo;

public class AdminInterceptor extends HandlerInterceptorAdapter { //@Admin을 위한 Interceptor

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 1. Handler 종류 확인
		if (handler instanceof HandlerMethod == false) {
			// DefaultServletHandler가 처리하는 경우(보통, assets의 정적 자원 접근)
			return true;
		}

		HandlerMethod handlerMethod = (HandlerMethod) handler;

	
		Admin admin = handlerMethod.getMethodAnnotation(Admin.class);
			
		//3.1.type(class)에 @Auth가 달려있는지 확인
		//Class<?> c =  handlerMethod.getMethod().getDeclaringClass();
		
		// 4. Method나 type(class)에 @Auth가 안달려 있으면
		if (admin == null ) {
			return true;
		}

		// 5. @Admin가 달려 있는 경우에는 인증(Authetication )여부 확인
		
		HttpSession session = request.getSession();
		if (session == null) {
			response.sendRedirect(request.getContextPath() + "/user/login");
			return false;
		}

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		if (authUser == null) {
			response.sendRedirect(request.getContextPath() + "/user/login");
			return false;
		}
		// 6. role 까지 체크(권한)
		String authority =authUser.getUauth();
		if(authority.equals("user")) {
			response.sendRedirect(request.getContextPath() + "/");
			return false;
		}
		
		
		
		return true;
	}

}
