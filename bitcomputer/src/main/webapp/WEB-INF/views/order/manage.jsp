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
<title>BitComputer - 컴퓨터는 역시 비트컴퓨터!!</title>
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
				<h1 class="my-4">주문관리</h1>
				<div class="list-group">
					<c:import url="/WEB-INF/views/includes/category.jsp" />
				</div>
			</div>
			<div class="col-lg-9">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">진행중인 주문</div>
					<div class="card-body">
						<!-- 진행중 주문 정보 -->
						<c:forEach var="order" items="${orderlist }">
							<c:if test="${'구매확정' ne order.ostate }">


								<table border="1">

									<tr>
										<th>주문번호</th>
										<th>받는사람</th>
										<th>주문일</th>
										<th>주소</th>
										<th>우편번호</th>
										<th>전화번호</th>
										<th>상태</th>
										<th>총금액</th>
										<th>송장번호</th>

									</tr>
									<tr>
										<td>${order.ono }</td>
										<td>${order.oname }</td>
										<td>${order.odate }</td>
										<td>${order.oaddress }</td>
										<td>${order.opost }</td>
										<td>${order.ophone }</td>
										<td>${order.ostate }</td>
										<td>${order.ototal }</td>
										<td>${order.oinvoice }</td>
									</tr>
									<tr>
										<th>구분</th>
										<th>제품명</th>
										<th>단가</th>
										<th>제조사</th>
										<th>소켓(슬롯)</th>
										<th>주문수량</th>
										<th>가격</th>
										<th colspan="2">
											<form action="${pageContext.request.contextPath}/order/change" method="post">
												<select name='state' id='state'>
													<option value='' selected disabled>=선택=</option>
													<option value='입금대기'>입금대기</option>
													<option value='발송완료'>발송완료</option>
													<option value='배송완료'>배송완료</option>
													<option value='구매확정'>구매확정</option>
												</select> 
												<input type="hidden" value="${order.ono }" name="no" id="no">
												<input type="submit">
											</form>
										</th>
										<c:forEach var="detail" items="${detaillist }">
											<c:if test="${order.ono eq detail.ono }">
												<tr>
													<td>${detail.pcategory }</td>
													<td>${detail.pname }</td>
													<td>${detail.pprice }</td>
													<td>${detail.pmanufacturer }</td>
													<td>${detail.psocket }</td>
													<td>${detail.odqty }</td>
													<td>${detail.pprice * detail.odqty}</td>
												</tr>
											</c:if>
										</c:forEach>
									<tr>
									</tr>
								</table>
								<hr />
							</c:if>
						</c:forEach>
						<!-- 진행중 주문 정보 -->
						<small class="text-muted">꼼꼼히 확인하기!!</small>
					</div>
				</div>
				<div class="card mt-4">
					<div class="card-body">
						<h3 class="card-title">완료된 주문</h3>
						<br />
						<h5>주문 정보</h5>
						<c:forEach var="order" items="${orderlist }">
							<c:if test="${'구매확정' eq order.ostate }">


								<table border="1">

									<tr>
										<th>주문번호</th>
										<th>받는사람</th>
										<th>주문일</th>
										<th>주소</th>
										<th>우편번호</th>
										<th>전화번호</th>
										<th>상태</th>
										<th>총금액</th>
										<th>송장번호</th>

									</tr>
									<tr>
										<td>${order.ono }</td>
										<td>${order.oname }</td>
										<td>${order.odate }</td>
										<td>${order.oaddress }</td>
										<td>${order.opost }</td>
										<td>${order.ophone }</td>
										<td>${order.ostate }</td>
										<td>${order.ototal }</td>
										<td>${order.oinvoice }</td>
									</tr>
									<tr>
										<th>구분</th>
										<th>제품명</th>
										<th>단가</th>
										<th>제조사</th>
										<th>소켓(슬롯)</th>
										<th>주문수량</th>
										<th>가격</th>
										<th colspan="2"><button
												onclick="location.href='${pageContext.request.contextPath}/order/delete?ono=${order.ono }'">삭제</button></th>
									</tr>
									<c:forEach var="detail" items="${detaillist }">
										<c:if test="${order.ono eq detail.ono }">
											<tr>
												<td>${detail.pcategory }</td>
												<td>${detail.pname }</td>
												<td>${detail.pprice }</td>
												<td>${detail.pmanufacturer }</td>
												<td>${detail.psocket }</td>
												<td>${detail.odqty }</td>
												<td>${detail.pprice * detail.odqty}</td>
											</tr>
										</c:if>
									</c:forEach>
									<tr>
									</tr>
								</table>
								<hr />
							</c:if>
						</c:forEach>
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
