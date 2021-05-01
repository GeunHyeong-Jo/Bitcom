<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<!-- <link href="${pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css"> -->
<script
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-3.6.0.js"
	type="text/javascript"></script>
<script>
	$(function(){
		$("#id").change(function(){
			$('#img-id').hide();
			$("#btn-id").show();
		});
		
		$("#btn-id").click(function(){
			const id = $("#id").val();
			if(id ==''){
				return;
			}
				$.ajax({
					url : "/bitcom/api/user/existid?id=" + id,
					async : true,
					data : '',
					dataType: 'json',
					success: function(response){
						if(response.result != 'success'){
							console.error(response.message);
							return;
						}
						if(response.data == true){
							alert('이미 존재하는 아이디입니다.');
							$("#id")
								.val('')
								.focus();
							return;
						}
						$('#img-id').show();
						$("#btn-id").hide();
					},
					error: function(xhr, status, e){
						console.error(status + ":"+ e);	
						
					}
				});
			});
		});
	
</script>
</head>
<body>
	<div id="container">
		<div id="content">
			<div id="user">
				<form id="join-form" name="joinForm" method="post"
					action="${pageContext.request.contextPath }/user/signup">

					<label class="block-label" for="id">사용할 ID</label> 
					<input id="uid"	name="uid" type="text" value="">
					
					<img id="img-id" style="width: 16px; display: none" src="${pageContext.request.contextPath }/assets/images/check.png">
					<input id="btn-id" type="button" value="중복체크">
					<br/>
					<label class="block-label">패스워드</label> 
					<input name="upassword"	type="password" value="">
					<label class="block-label">패스워드 확인</label> 
					<input name="password-check" type="password" value="">
					<img id="img-check" style="width: 16px; display: none" src="${pageContext.request.contextPath }/assets/images/check.png">
					<br/>
					<label class="block-label" for="name">이름</label> 
					<input id="uname" name="uname" type="text" value=""> 
					<br/>
					<label class="block-label" for="uemail">이메일</label> 
					<input id="uinput-email" name="uemail" type="text" value=""> 
					<img id="img-check" style="width: 16px; display: none" src="${pageContext.request.contextPath }/assets/images/check.png">
					<input id="btn-check" type="button" value="중복체크">
					
					<br/>
					<label class="block-label" for="uphone">휴대전화번호</label> 
					<input id="uphone" name="uphone" type="text" value=""> 
					<br/>
					
					<label class="block-label" for="uaddress">주소</label>
					<input id="uaddress" name="uaddress" type="text" value="">
					<label class="block-label" for="upost">우편번호</label>
					<input id="upost"  name="upost" type="text" value="">
					<br/>
					
					<fieldset>
						<legend>약관동의</legend>
							<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
							<label>서비스 약관에 동의합니다.</label>
							<p>회원은 모든 권리를 요구할수 없습니다</p>
					</fieldset> 
					<input type="submit" value="가입하기">
				</form>
			</div>
		</div>
	</div>
</body>
</html>