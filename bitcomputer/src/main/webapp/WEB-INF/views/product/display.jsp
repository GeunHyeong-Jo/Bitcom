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
	<c:forEach var="productVo" items="${productList}">
		<div class="col-lg-4 col-md-6 mb-4">
			<div class="card h-100">
				<a href="${pageContext.request.contextPath }/product/detail?pno=${productVo.pno}" onclick="window.open(this.href, '_blank', 'width=600px,height=450px,toolbars=no,scrollbars=no'); return false;">
				<img class="card-img-top"
					src="${pageContext.request.contextPath}/${productVo.pimage}" alt="..." /></a>
				<div class="card-body">
					<h4 class="card-title">
						<a href="${pageContext.request.contextPath }/product/detail?pno=${productVo.pno}" onclick="window.open(this.href, '_blank', 'width=600px,height=450px,toolbars=no,scrollbars=no'); return false;">${productVo.pname }</a>
					</h4>
					<h5>${productVo.pprice}원</h5>
					<p class="card-text">${productVo.pcontent}
					</p>
					<form action="cart/addcart?pno=${productVo.pno}" method="post">
						<label class="block-label" for="qty">수량선택</label>
						<input id="qty" name="qty" type="number" min="1" value="1">
						<input type="submit" value="장바구니에 추가">
					</form>
				</div>
				
			</div>
		</div>
	</c:forEach>

</body>
</html>