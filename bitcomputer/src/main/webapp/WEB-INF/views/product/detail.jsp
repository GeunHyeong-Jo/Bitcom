<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-3.6.0.js"
	type="text/javascript"></script>
<script>

</script>
<title>${productVo.pname}</title>
</head>
<body>
	<h1>${productVo.pname}상세정보</h1>
	<img src="${pageContext.request.contextPath}/${productVo.pimage}">
	<p>
		가격 : ${productVo.pprice} 원<br/> 
		제조사 : ${productVo.pmanufacturer}<br/>
		소켓(슬롯) : ${productVo.psocket}<br/> 
		재고 : ${productVo.pqty} 개<br/>
		제품설명 : ${productVo.pcontent}
	</p>
	<c:if test="${not empty authUser }">
		<form action="${pageContext.request.contextPath }/cart/addcart?pno=${productVo.pno}" method="post">
			<label class="block-label" for="qty">수량선택</label>
			<input id="qty" name="qty" type="number" value="1">
			<input type="submit" value="장바구니에 추가">
			<!--  이코드를 추가하면 해당페이지는 새로고침, 현재창 종료 onClick="opener.parent.location='${pageContext.request.contextPath}/'; window.close();" -->
			<!-- 자바스크립트로 값넘겨받아 처리하는거 구현하기 -->
		</form>
	</c:if>
	<input type="button" value="현재창 닫기" onclick="window.close();">
</body>
</html>