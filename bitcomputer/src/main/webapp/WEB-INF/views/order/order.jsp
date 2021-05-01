<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문</title>
</head>
<body>
	<div id="container">
		<c:import url="/WEB-INF/views/includes/header.jsp" />
		<div id="wrapper">
			<div id="content">
				<c:import url="/WEB-INF/views/includes/category.jsp" />
				<c:import url="/WEB-INF/views/cart/cart.jsp" />
				<div id="content">
					<form action="${pageContext.request.contextPath }/order/putorder" method="post">
						<table border="1">
							<tr>
								<th>받으시는분</th>
								<th>전화번호</th>
								<th>주소</th>
								<th>우편번호</th>
							</tr>
							<tr>
								<td><input id="name" name="name" value="${authUser.uname }"></td>
								<td><input id="phone" name="phone" value="${authUser.uphone }"></td>
								<td><input id="address" name="address" value="${authUser.uaddress }"></td>
								<td><input id="post" name="post" value="${authUser.upost }"></td>
							</tr>
							<tr>
								<td><label for="usemydata">회원가입시 입력한 정보 사용</label><input id="usemydata" type="checkbox" ></td>
							</tr>
						</table>
						
						<input type="submit" id="submit" value="주문하기">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>