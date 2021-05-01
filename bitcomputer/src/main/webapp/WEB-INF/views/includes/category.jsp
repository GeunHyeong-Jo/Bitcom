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

	<a class="list-group-item"
		href="${pageContext.request.contextPath}/">전체보기</a>
	<a class="list-group-item"
		href="${pageContext.request.contextPath}/product/getcategory?category=cpu">CPU</a>
	<a class="list-group-item"
		href="${pageContext.request.contextPath}/product/getcategory?category=Mainboard">Mainboard</a>
	<a class="list-group-item"
		href="${pageContext.request.contextPath}/product/getcategory?category=GPU">GPU</a>
	<a class="list-group-item"
		href="${pageContext.request.contextPath}/product/getcategory?category=RAM">RAM</a>
	<a class="list-group-item"
		href="${pageContext.request.contextPath}/product/getcategory?category=Storage">Storage</a>
	<a class="list-group-item"
		href="${pageContext.request.contextPath}/product/getcategory?category=Power">Power</a>
	<a class="list-group-item"
		href="${pageContext.request.contextPath}/product/getcategory?category=etc">etc</a>



	<!--
	<ul>
		<li><a href="${pageContext.request.contextPath}/product/getall">전체보기</a></li>
		<li><a href="${pageContext.request.contextPath}/product/getcategory?category=cpu">CPU</a></li>
		<li><a href="${pageContext.request.contextPath}/product/getcategory?category=Mainboard">Mainboard</a></li>
		<li><a href="${pageContext.request.contextPath}/product/getcategory?category=GPU">GPU</a></li>
		<li><a href="${pageContext.request.contextPath}/product/getcategory?category=RAM">RAM</a></li>
		<li><a href="${pageContext.request.contextPath}/product/getcategory?category=Storage">Storage</a></li>
		<li><a href="${pageContext.request.contextPath}/product/getcategory?category=Power">Power</a></li>
		<li><a href="${pageContext.request.contextPath}/product/getcategory?category=etc">etc</a></li>
	</ul>
	  -->
</body>
</html>