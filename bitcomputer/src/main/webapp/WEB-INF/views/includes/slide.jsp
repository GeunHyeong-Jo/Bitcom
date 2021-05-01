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

	<div class="carousel-item active">
		<img class="d-block img-fluid"
			src="${pageContext.request.contextPath }/assets/images/main/welcome1.png" alt="https://via.placeholder.com/900x350" />
	</div>
	<div class="carousel-item">
		<img class="d-block img-fluid"
			src="${pageContext.request.contextPath }/assets/images/main/welcome2.png" alt="Second slide" />
	</div>
	<div class="carousel-item">
		<img class="d-block img-fluid"
			src="${pageContext.request.contextPath }/assets/images/main/welcome3.png" alt="Third slide" />
	</div>
</body>
</html>