<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>컴퓨터는 BitComputer</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<!-- <link href="${pageContext.request.contextPath }/assets/css/main.css" rel="stylesheet" type="text/css">  아직 css 구현 안할 예정 -->
</head>
<body>
	<div id="container">
	<c:import url="/WEB-INF/views/includes/header.jsp"/>
		<div id="wrapper">
			<div id="content">
			<c:import url="/WEB-INF/views/includes/category.jsp"/>
			<c:import url="/WEB-INF/views/cart/cart.jsp"/>
				<div id="content">
					<c:import url="/WEB-INF/views/product/display.jsp"/>
					
					<button onclick="location.href='${pageContext.request.contextPath }/order/make'">주문하러가기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>