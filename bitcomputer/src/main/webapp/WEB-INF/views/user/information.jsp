<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>BitComputer - 내정보</title>
<meta charset="UTF-8">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/css/signup.css"
	rel="stylesheet" />
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-3.6.0.js" type="text/javascript"></script>
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

								<h3 class="text-center">나의 회원정보</h3>

								<div class="panel-body">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span> </span> <input type="text"
												class="form-control" value="${mydata.uid }" id="uid"
												name="uid" readonly/>
										</div>
									</div>
									<!-- 아이디 -->
									
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span></span> 
												<input type="text"
												id="uname" name="uname" class="form-control"
												value="${mydata.uname }" readonly/>
										</div>
									</div>
									<!-- 이름 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-envelope"></span></span> <input
												id="uinput-email" name="uemail" type="text"
												class="form-control" value="${mydata.uemail }" readonly />
										</div>
									</div>
									<!-- 이메일 -->

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span> </span> <input type="text"
												class="form-control" id="uphone"
												name="uphone" value="${mydata.uphone }" readonly/>
										</div>
									</div>
									<!-- 휴대전화번호 -->

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control"  id="uaddress"
												name="uaddress" value="${mydata.uaddress }" readonly/>
										</div>
									</div>
									<!-- 주소 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control" id="upost"
												name="upost" value="${mydata.upost }" readonly/>
										</div>
									</div>
									<!-- 우편번호 -->
									<button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href='${pageContext.request.contextPath }/user/update'">정보수정하러가기</button>
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

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</html>