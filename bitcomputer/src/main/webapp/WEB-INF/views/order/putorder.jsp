<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>BitComputer - 주문완료</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet" />
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="${pageContext.request.contextPath}">BitComputer</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<c:import url="/WEB-INF/views/includes/header.jsp" />
			</div>
		</div>
	</nav>
	<!-- Page Content-->
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="my-4">주문완료</h1>
				<div class="list-group">
					<c:import url="/WEB-INF/views/includes/category.jsp" />
				</div>
			</div>
			<div class="col-lg-9">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">${authUser.uname }님의 주문완료</div>
					<div class="card-body">
						<!--  -->
						<p>결제는 무통장 입금으로 해주시면 됩니다!!
						<br/>은행명: 신한은행 계좌변호: 110-427-624796 예금주: 조근형</p>
						<!--  -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
	<!-- Bootstrap core JS-->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
