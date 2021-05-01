<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<!-- uID, uNAME, uPHONE, uADDERSS, uPOST -->
<body>
	<table border="1">
		<tr>
			<th>받으시는분</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>우편번호</th>
		</tr>
		<tr>
			<td><input id="name" value="${authUser.uname }"></td>
			<td><input id="phone" value="${authUser.uphone }"></td>
			<td><input id="address" value="${authUser.uaddress }"></td>
			<td><input id="post" value="${authUser.upost }"></td>
		</tr>
		<tr>
			<td><label for="usemydata">회원가입시 입력한 정보 사용</label><input id="usemydata" name="usemydata" type="checkbox" ></td>
		</tr>
	</table>
</body>
</html>