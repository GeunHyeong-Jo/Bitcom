<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>관리자 메뉴</title>
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-3.6.0.js" type="text/javascript"></script>
	<script>
		$(function () { // 빠진 항목 있나 체크
			$("#btnsend").click(function () {
				var isRight = true;
				$("#addproduct").find("input[type=text]").each(function (index, item) {
					// 아무값없이 띄어쓰기만 있을 때도 빈 값으로 체크되도록 trim() 함수 호출
					if ($(this).val().trim() == '') {
						alert(" 빠진항목 없이 입력하세요.");
						isRight = false;
						return false;
					}
				});

				if (!isRight) {
					return false;
				}

				$(this).prop("disabled", true);
				$(this).prop("disabled", false);
			});

		});

	</script>
</head>

<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="${pageContext.request.contextPath}">BitComputer</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
				<h1 class="my-4">비트컴퓨터</h1>
				<div class="list-group">
					<c:import url="/WEB-INF/views/includes/category.jsp" />
				</div>
			</div>
			<div class="col-lg-9">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">상품 추가하기</div>
					<div class="card-body">
						<!--   상품 등록      -->

						<form method="post" enctype="multipart/form-data"
							action="${pageContext.request.contextPath }/product/admin" id="addproduct">
							<select name='pcategory' id='pcategory'>
								<option value='cpu' selected>CPU</option>
								<option value='gpu'>GPU</option>
								<option value='mainboard'>Mainboard</option>
								<option value='power'>Power</option>
								<option value='ram'>RAM</option>
								<option value='stroage'>Stroage</option>
								<option value='etc'>etc</option>
							</select> <label class="block-label">제품명</label> <input name="pname" type="text" value="">
							<label class="block-label">가격</label>
							<input name="pprice" type="number" step="500" min="500" value="">
							<br /> <label class="block-label">제조사</label> <input name="pmanufacturer" type="text"
								value=""> <label class="block-label">소켓(슬롯)</label> <input name="psocket" type="text"
								value=""> <br /> <label class="block-label">제품
								상세정보</label>
							<textarea name="pcontent"></textarea>
							<br /> <label class="block-label">재고량</label> <input name="pqty" type="number" min="1"
								value="1"> <input type="file" name="file"> <input type="submit" value="업로드" id="btnsend">
						</form>
						<!--                -->
						<hr />
						<small class="text-muted">내용을 잘 확인해서 입력해주세요</small>
					</div>
				</div>
				<div class="row">
					<!-- 제품출력 -->
					<c:forEach var="productVo" items="${productList}">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<img class="card-img-top" src="${pageContext.request.contextPath }/${productVo.pimage }"
									alt="..." />
								<div class="card-body">
									<h4 class="card-title">
										<a>${productVo.pname }</a>
									</h4>
									<h5>${productVo.pprice }원</h5>
									<h5>잔여 ${productVo.pqty }개</h5>
									<p class="card-text">${productVo.pcontent }</p>
									<button
										onclick="location.href='${pageContext.request.contextPath }/product/delete?no=${productVo.pno}'">제품
										삭제하기</button>
									<!--  <form action="${pageContext.request.contextPath }/product/delete?no=${productVo.pno}"
										method="get">
										<input type="submit" value="${productVo.pno} 제품 삭제하기">
									</form>-->
								</div>

							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<c:import url="/WEB-INF/views/includes/footer.jsp" />
	<!-- Bootstrap core JS-->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${pageContext.request.contextPath }/js/scripts.js"></script>
</body>

</html>