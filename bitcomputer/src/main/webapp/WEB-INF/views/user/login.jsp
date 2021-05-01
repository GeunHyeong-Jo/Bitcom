<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div class="wrapper fadeInDown zero-raduis">
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<div class="fadeIn first">
				<!-- <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" /> -->
				<h2 class="my-5">Sign In</h2>
			</div>

			<!-- Login Form -->
			<form id="login-form" name="loginform" method="post" action="${pageContext.request.contextPath }/user/auth">
				<input type="text" id="id" class="fadeIn second zero-raduis" name="id" placeholder="id"> 
				<input type="password" id="password" class="fadeIn third zero-raduis" name="password" placeholder="password">
				
				<c:if test="${'fail' == param.result }">
					<p> 
						로그인이 실패했습니다.
					</p>
				</c:if>
				
				<input type="submit" class="fadeIn fourth zero-raduis" value="login">
				<h2>You don't have a account ?</h2>
				<input type="button" class="fadeIn fourth zero-raduis pc"
					value="register" onclick="location.href='${pageContext.request.contextPath }/user/signup'">
			</form>

		</div>
	</div>
</body>
	<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" />
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>