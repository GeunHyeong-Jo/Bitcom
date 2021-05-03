<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<ul class="navbar-nav ml-auto">
	<c:choose>
		<c:when test="${empty authUser }">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath }">Home</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath }/user/login">로그인</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath }/user/signup">회원가입</a></li>
		</c:when>
		<c:when test="${authUser.uauth eq 'admin' }">
		<li class="nav-item"><a class="nav-link">${authUser.uname }님 관리자계정 로그인 되었습니다</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/user/logout">로그아웃</a></li>	
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/order/admin">주문관리</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/product/admin">상품관리</a></li>
		</c:when>
		<c:otherwise>
			<li class="nav-item"><a class="nav-link">${authUser.uname }님 로그인 되었습니다</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/">홈</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/user/myinfo">내정보</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/user/logout">로그아웃</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/cart">장바구니</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/order/make">주문</a></li>
			<li class="nav-item"><a class="nav-link"href="${pageContext.request.contextPath }/order/inquiry">주문조회</a></li>
		</c:otherwise>
	</c:choose>
	<!-- class="nav-item active" 이걸로 설정하면 현재 있는탭이 표시된다 -->
</ul>