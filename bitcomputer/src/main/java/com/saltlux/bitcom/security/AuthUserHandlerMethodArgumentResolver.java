package com.saltlux.bitcom.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebArgumentResolver;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.saltlux.bitcom.vo.UserVo;



public class AuthUserHandlerMethodArgumentResolver implements HandlerMethodArgumentResolver { //UserController에서 update에 사용

	@Override
	public Object resolveArgument(MethodParameter parameter,
			ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, /* 다른 웹 브라우저에서도 지원이 되어야 하기 때문에 NativeWebRequest으로 선언한다*/
			WebDataBinderFactory binderFactory) throws Exception {
		if (!supportsParameter(parameter)) {
			return WebArgumentResolver.UNRESOLVED;
		}

		HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();

		HttpSession session = request.getSession();
		if (session == null) {
			return null;
		}
		return session.getAttribute("authUser");
	}

	@Override
	public boolean supportsParameter(MethodParameter parameter) {
		AuthUser authUser = parameter.getParameterAnnotation(AuthUser.class);

		// @AuthUser가 안붙어 있는 경우
		if (authUser == null) {
			return false;
		}

		// 파라미터 타입이 UserVo가 아니면...
		if (!parameter.getParameterType().equals(UserVo.class)) {
			return false;
		}

		return true;
	}
}
