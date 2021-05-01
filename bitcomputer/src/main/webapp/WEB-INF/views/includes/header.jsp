<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="header">
	<h1>BitComputer</h1>
	<ul>
		<li><a href="${pageContext.request.contextPath }/">홈</a><li>
		<c:choose>
			<c:when test="${empty authUser }">
				<li><a href="${pageContext.request.contextPath }/user/login">로그인</a><li>
				<li><a href="${pageContext.request.contextPath }/user/signup">회원가입</a><li>
			</c:when>	
			<c:otherwise>
				<li>${authUser.uname }님으로 로그인 되었습니다</li>
				<li><a href="${pageContext.request.contextPath }/user/myinfo">내정보</a><li>
				<li><a href="${pageContext.request.contextPath }/user/logout">로그아웃</a><li>
				<li><a href="${pageContext.request.contextPath }/cart">장바구니</a><li>
				<li><a href="${pageContext.request.contextPath }/order/make">주문</a><li>
				<li><a href="${pageContext.request.contextPath }/order/inquiry">주문조회</a><li>
					
			</c:otherwise>
		</c:choose>
		
	</ul>
</div>
