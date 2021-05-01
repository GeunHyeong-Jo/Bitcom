<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function test(id){
		  id.setAttribute('class','on');//속성 : class 값으로 on 추가
		  alert(id);
		  return false;
	}
</script>
<title>Insert title here</title>
</head>
<body>
	<h1>판매중인 상품</h1>
	
	<c:forEach var="productVo" items="${productList}">
	
		<a href="${pageContext.request.contextPath }/product/detail?pno=${productVo.pno}" 
		onclick="window.open(this.href, '_blank', 'width=600px,height=450px,toolbars=no,scrollbars=no'); return false;">
			<img src="${pageContext.request.contextPath}/${productVo.pimage}"/>
		</a>
			<p>제품명 ${productVo.pname}<br/>
			가격 ${productVo.pprice}원
			재고량 ${productVo.pqty}개<br/>
			
			</p>
			<form action="cart/addcart?pno=${productVo.pno}" method="post">
				<label class="block-label" for="qty">수량선택</label>
				<input id="qty" name="qty" type="number" value="1">
				<input type="submit" value="장바구니에 추가">
			</form>
			
	</c:forEach>

</body>
</html>