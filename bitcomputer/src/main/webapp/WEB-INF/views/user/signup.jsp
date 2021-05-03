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
<title>BitComputer - 회원가입</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/css/signup.css"
	rel="stylesheet" />
</head>
<body>
	<div id="fullscreen_bg" class="fullscreen_bg">
		<form class="form-signin" id="join-form" name="joinForm" method="post"
			action="${pageContext.request.contextPath }/user/signup">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel panel-primary">

								<h3 class="text-center">회원정보를 입력하세요</h3>

								<div class="panel-body">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span> </span> <input type="text"
												class="form-control" placeholder=" User ID" id="uid"
												name="uid" />
										</div>
										<img id="img-id" style="width: 16px; display: none"
											src="${pageContext.request.contextPath }/assets/images/check.png">
										<input id="btn-id" type="button" value="중복체크">
									</div>
									<!-- 아이디 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-lock"></span></span> <input
												type="password" class="form-control" name="password"
												placeholder="Password" />
										</div>
									</div>

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-lock"></span></span> <input
												type="password" class="form-control" name="password-check"
												placeholder="Password Check" />
										</div>
									</div>

									<img id="img-pw" style="width: 16px; display: none"
										src="${pageContext.request.contextPath }/assets/images/check.png">
									<!-- 비밀번호 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span></span> <input type="text"
												id="uname" name="uname" class="form-control"
												placeholder="Name" />
										</div>
									</div>
									<!-- 이름 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-envelope"></span></span> <input
												id="uinput-email" name="uemail" type="text"
												class="form-control" placeholder="Email" />
										</div>
									</div>
									<!-- 이메일 -->

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span> </span> <input type="text"
												class="form-control" placeholder=" Phone " id="uphone"
												name="uphone" />
										</div>
									</div>
									<!-- 휴대전화번호 -->

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control" placeholder="Address" id="uaddress"
												name="uaddress" />
										</div>
									</div>
									<!-- 주소 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control" placeholder="Postal code" id="upost"
												name="upost" />
										</div>
									</div>
									<!-- 우편번호 -->
									<button class="btn btn-lg btn-primary btn-block" type="submit">가입하기</button>
									<button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href='${pageContext.request.contextPath }'">돌아가기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</html>
