<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 성공</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<!-- <link href="${pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css"> -->
</head>
<body>
	<div id="container">
		<div id="content">
			<div id="user">
				<p class="jr-success">
					회원가입을 축하합니다.
					<br><br>
					<a href="${pageContext.request.contextPath }/user/login">로그인하기</a>
				</p>				
			</div>
		</div>
	</div>
</body>
</html>