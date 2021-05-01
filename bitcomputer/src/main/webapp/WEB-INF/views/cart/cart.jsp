<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<p>장바구니</p>
	<ul>
		<c:choose>
			<c:when test="${not empty authUser and not empty cartList}">
				<h4>${authUser.uname }님의 장바구니</h4>
				<a>CPU</a>
				<c:forEach var="cpu" items="cartList">
				
				
				
				</c:forEach>
			</c:when>
			<c:otherwise>
				<a>CPU</a><br/>
				<a>Mainboard</a><br/>
				<a>GPU</a><br/>
				<a>RAM</a><br/>
				<a>Storage</a><br/>
				<a>Power</a><br/>
				<a>etc</a>
			</c:otherwise>
		</c:choose>
	</ul>
	
</body>
</html>