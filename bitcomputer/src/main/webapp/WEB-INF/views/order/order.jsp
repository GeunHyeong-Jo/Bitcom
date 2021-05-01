<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Item - Start Bootstrap Template</title>
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
				<h1 class="my-4">주문하기</h1>
				<div class="list-group">
					<c:import url="/WEB-INF/views/includes/category.jsp" />
				</div>
			</div>
			<div class="col-lg-9">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">장바구니에 담긴 상품</div>
					<div class="card-body">

						<table border="1">
							<tr>
								<th>카테고리</th>
								<th>제품명</th>
								<th>가격</th>
								<th>갯수</th>
								<th>총금액</th>
							</tr>

							<c:forEach var="cart" items="${cartList }">
								<tr>
									<td>${cart.pcategory }</td>
									<td>${cart.pname }</td>
									<td>${cart.pprice }</td>
									<td>${cart.cqty }</td>
									<td>${cart.cqty * cart.pprice }</td>
								</tr>
							</c:forEach>
						</table>
						<!-- 상품정보 -->
						<hr/>
						<small class="text-muted">주문한 물품과 수량을 확인하세요</small>
						

					</div>
				</div>
				<div class="card mt-4">
					<div class="card-body">
						<h3 class="card-title">주문하기</h3>
						<br />
						<h5>주문자 정보</h5>
						<form action="${pageContext.request.contextPath }/order/putorder"
							method="post">
							<table border="1">
								<tr>
									<th>받으시는분</th>
									<th>전화번호</th>
									<th>주소</th>
									<th>우편번호</th>
								</tr>
								<tr>
									<td><input id="name" name="name"
										value="${authUser.uname }"></td>
									<td><input id="phone" name="phone"
										value="${authUser.uphone }"></td>
									<td><input id="address" name="address"
										value="${authUser.uaddress }"></td>
									<td><input id="post" name="post"
										value="${authUser.upost }"></td>
								</tr>



							</table>
							<label for="usemydata">회원가입시 입력한 정보 사용</label> <input
								id="usemydata" type="checkbox"><br/><hr/> 
								<input class="btn btn-success" type="submit" id="submit" value="주문하기">
						</form>
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
