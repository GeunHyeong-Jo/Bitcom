<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>내정보</title>
<meta charset="UTF-8">
</head>
<body>

	<label class="block-label" for="name">이름</label>
	<input id="uname" name="uname" type="text" value="${mydata.uname }" readonly>
	<br/>
	<label class="block-label" for="uemail">이메일</label>
	<input id="uinput-email" name="uemail" type="text" value="${mydata.uemail }" readonly>
	<br/>
	<label class="block-label" for="uphone">휴대전화번호</label>
	<input id="uphone" name="uphone" type="text" value="${mydata.uphone }" readonly>
	<br/>
	<label class="block-label" for="uaddress">주소</label>
	<input id="uaddress" name="uaddress" type="text" value="${mydata.uaddress }" readonly>
	<br/>
	<label class="block-label" for="upost">우편번호</label>
	<input id="upost" name="upost" type="text" value="${mydata.upost }" readonly>
	<br/>
	<input type="button" value="정보수정하러가기"  onclick="location.href='${pageContext.request.contextPath }/user/update'">
	
	
</body>
</html>