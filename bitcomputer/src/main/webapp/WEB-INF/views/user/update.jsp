<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<script
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-3.6.0.js"
	type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/css/signup.css"
	rel="stylesheet" />
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css"/>
	<script>
		$(function () { // 빠진 항목 있나 체크
			$("#btnsend").click(function () {
				var isRight = true;
				$("#join-form").find("input[type=text]").each(function (index, item) {
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

<head>
<title>BitComputer - 내정보수정</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div id="fullscreen_bg" class="fullscreen_bg">
		<form class="form-signin" id="join-form" name="joinForm" method="post"
			action="${pageContext.request.contextPath }/user/update">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel panel-primary">
								<h3 class="text-center">나의 회원정보 수정</h3>
								<div class="panel-body">
									<!-- 비밀번호 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-lock"></span></span> <input
												type="password" class="form-control" placeholder="Password"
												name="upassword" />
										</div>
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-lock"></span></span> <input
												type="password" class="form-control" name="upassword-check"
												placeholder="Password Check" />
										</div>
									</div>
									<img id="img-pw" style="width: 16px; display: none"
										src="${pageContext.request.contextPath }/assets/images/check.png">
									<!-- 비밀번호 -->
									<!-- 이름 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span></span> <input type="text"
												id="uname" name="uname" class="form-control"
												value="${uservo.uname }" />
										</div>
									</div>
									<!-- 이름 -->
									<!-- 이메일 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-envelope"></span></span> <input
												id="uinput-email" name="uemail" type="text"
												class="form-control" value="${uservo.uemail }" />
										</div>
									</div>
									<!-- 이메일 -->
									<!-- 휴대전화번호 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span> </span> <input type="text"
												class="form-control" id="uphone" name="uphone"
												value="${uservo.uphone }" />
										</div>
									</div>
									<!-- 휴대전화번호 -->
									<!-- 주소 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control" id="uaddress" name="uaddress"
												value="${uservo.uaddress }" />
										</div>
									</div>
									<!-- 주소 -->
									<!-- 우편번호 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control" id="upost" name="upost"
												value="${uservo.upost }" />
										</div>
									</div>
									<!-- 우편번호 -->
									<button class="btn btn-lg btn-primary btn-block" type="submit" id="btnsend">정보수정!!</button>
									<button class="btn btn-lg btn-primary btn-block" type="button"
										onclick="location.href='${pageContext.request.contextPath }'">돌아가기</button>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>



</body>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</html>