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
<body>
	<div class="card-header">${authUser.uname }님의 장바구니</div>
	<div class="card-body">
		<!--  -->
		<form action="${pageContext.request.contextPath}/order/make" method="post">
		<table border="1">
			<tr>
				<th>장바구니 번호</th>
				<th>제품사진</th>
				<th>카테고리</th>
				<th>제품명</th>
				<th>가격</th>
				<th>갯수</th>
				<th>총금액</th>
				<th>삭제</th>
			</tr>
				
			<c:forEach var="cart" items="${cartList }" >
				<tr>
					<td>${cart.cid }</td>
					<td><img  src="${pageContext.request.contextPath }/${cart.pimage }"></td>
					<td>${cart.pcategory }</td>
					<td>${cart.pname }</td>
					<td>${cart.pprice }</td>
					<td>${cart.cqty }</td>
					<td>${cart.cqty * cart.pprice }</td>
					<td><a href="${pageContext.request.contextPath}/cart/deletecart?cid=${cart.cid }">장바구니에서 삭제</a></td>
				</tr>
				<!-- https://m.blog.naver.com/10hsb04/221685730197 표안의 체크박스 정보 가져오기 -->
				
			</c:forEach>
		</table>
		<br/>
		<a class="btn btn-success" href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>
		<input class="btn btn-success" type="submit" value="주문하러가기">
	</form>
		<!--  -->
	</div>


</body>
</html>