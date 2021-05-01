<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 주문 조회</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>주문번호</th>
			<th>받는사람</th>
			<th>주문일</th>
			<th>주소</th>
			<th>우편번호</th>
			<th>전화번호</th>
			<th>상태</th>
			<th>총금액</th>
			<th>송장번호</th>
			<th>주문취소</th>
		</tr>

		<c:forEach var="order" items="${orderlist }">
			<tr>
				<td>${order.ono }</td>
				<td>${order.oname }</td>
				<td>${order.odate }</td>
				<td>${order.oaddress }</td>
				<td>${order.opost }</td>
				<td>${order.ophone }</td>
				<td>${order.ostate }</td>
				<td>${order.ototal }</td>
				<td>${order.oinvoice }</td>
				<td><a href="${pageContext.request.contextPath}/order/cancel?ono=${order.ono }">주문취소하기</a></td>
			</tr>
			<tr>
				<th>제품사진</th>
				<th>카테고리</th>
				<th>제품명</th>
				<th>단가</th>
				<th>제조사</th>
				<th>소켓(슬롯)</th>
				<th>주문수량</th>
				<th>가격</th>
			</tr>
			<c:forEach var="detail" items="${detaillist }">
				<c:if test="${order.ono eq detail.ono }">
					<tr>
						<td><img src="${pageContext.request.contextPath}/${detail.pimage }"></td>
						<td>${detail.pcategory }</td>
						<td>${detail.pname }</td>
						<td>${detail.pprice }</td>
						<td>${detail.pmanufacturer }</td>
						<td>${detail.psocket }</td>
						<td>${detail.odqty }</td>
						<td>${detail.pprice * detail.odqty}</td>
					</tr>
				</c:if>
			</c:forEach>
			<tr>
			</tr>
		</c:forEach>
	</table>
	<!--    detaillist -->
</body>
</html>