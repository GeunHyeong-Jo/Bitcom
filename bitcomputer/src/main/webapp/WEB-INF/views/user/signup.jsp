<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>BitComputer - 회원가입</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/css/signup.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-3.6.0.js"
	type="text/javascript"></script>
</head>
<script>
	

	$(function(){ // 빠진 항목 있나 체크
        $("#btnsend").click(function(){
            var isRight = true;
            $("#join-form").find("input[type=text]").each(function(index, item){
                // 아무값없이 띄어쓰기만 있을 때도 빈 값으로 체크되도록 trim() 함수 호출
                if ($(this).val().trim() == '') {
                    alert(" 빠진항목 없이 입력하세요.");
                    isRight = false;
                    return false;
                }
            });

            if (!isRight) {
                return false;
            }

            $(this).prop("disabled", true);
            $(this).prop("disabled", false);
        });

    });
	

	function CheckPassword(uid, upw) {

		if (!/^[a-zA-Z0-9]{8,20}$/.test(upw)) {
			$('#npw').val("비밀번호는 숫자와 영문자 조합으로 8~20자리를 사용해야 합니다.");
			return false;
		}
		var chk_num = upw.search(/[0-9]/g);
		var chk_eng = upw.search(/[a-z]/ig);
		if (chk_num < 0 || chk_eng < 0) {
			$('#npw').val("비밀번호는 숫자와 영문자를 혼용하여야 합니다.");
			return false;
		}
		if (/(\w)\1\1\1/.test(upw)) {
			$('#npw').val("비밀번호에 같은 문자를 4번 이상 사용하실 수 없습니다.");
			return false;
		}
		if (upw.search(uid) > -1) {
			$('#npw').val("ID가 포함된 비밀번호는 사용하실 수 없습니다.");
			return false;
		}
		return true;
	}

	function ConfirmPassword(upw, ppw) {
		if (upw == ppw) {
			return true;
		} else {
			return false;
		}
	}

	$(function() {    //아이디 & 비밀번호
		
		$('#upassword').change(function() {// 비밀번호 유효성 검사

			let uid = $("#uid").val();
			let upw = $("#upassword").val();
			if (CheckPassword(uid, upw) == true) {
				$('#npw').hide();
				$('#ppw').show();
				$('#cnpw').show();
				$('#cppw').hide();
				
			} else {
				$('#npw').show();
				$('#ppw').hide();
				$('#cnpw').show();
				$('#cppw').hide();
			}

		})

		$('#checkupassword').change(function() { //비밀번호 일치여부 판단
			let upw = $("#upassword").val();
			let ppw = $("#checkupassword").val();
			if (ConfirmPassword(upw, ppw) == true) {
				$('#cnpw').hide();
				$('#cppw').show();
			} else {
				$('#cnpw').show();
				$('#cppw').hide();
			}

		})

		$("#uid").change(function() {
			$('#img-id').hide();
			$("#btn-id").show();
		});
		$("#btn-id").click(function() {// 아이디 중복 체크
			const id = $("#uid").val();
			if (id == '') {
				return;
			}
			$.ajax({
				url : "/bitcomputer/api/user/existid?id=" + id,
				async : true,
				data : '',
				dataType : 'json',
				success : function(response) {
					if (response.result != 'success') {
						console.error(response.message);
						return false;
					}
					if (response.data == true) {
						alert('사용 하실 수 없는 아이디 입니다');
						$("#uid").val('').focus();
						return false;
					}
					$('#img-id').show();
					$("#btn-id").hide();
					return true
				},
				error : function(xhr, status, e) {
					console.error(status + ":" + e);

				}
			});
		});
	});
</script>
<body>
	<div id="fullscreen_bg" class="fullscreen_bg">
		<form class="form-signin" id="join-form" name="joinForm" method="post"
			action="${pageContext.request.contextPath }/user/signup">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel panel-primary">

								<h3 class="text-center">회원정보를 입력하세요</h3>

								<div class="panel-body">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span> </span> <input type="text"
												class="form-control" placeholder=" User ID" id="uid"
												name="uid" />
										</div>
										<img id="img-id" style="width: 16px; display: none;"
											src="${pageContext.request.contextPath }/assets/images/check.png">
										<input id="btn-id" type="button" value="중복체크">
									</div>
									<!-- 아이디 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-lock"></span></span> <input
												type="password" class="form-control" name="upassword"
												id="upassword" placeholder="Password" />
										</div>
											<img id="ppw" style="width: 16px; display: none;"
										src="${pageContext.request.contextPath }/assets/images/check.png">
									<p style="color: crimson; display: none;" id="npw">이용 불가능한
										비밀번호 입니다</p>
										
									</div>
								

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-lock"></span></span> <input
												type="password" class="form-control" name="password-check"
												id="checkupassword" placeholder="Password Check" />
										</div>
										<p style="color: crimson; display: none;" id="cnpw">일치하지
										않습니다!</p>
									<img id="cppw" style="width: 16px; display: none;"
										src="${pageContext.request.contextPath }/assets/images/check.png">
									</div>

									

									<!-- 비밀번호 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span></span> <input type="text"
												id="uname" name="uname" class="form-control"
												placeholder="Name" />
										</div>
									</div>
									<!-- 이름 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-envelope"></span></span> <input
												id="uinput-email" name="uemail" type="text"
												class="form-control" placeholder="Email" />
										</div>
									</div>
									<!-- 이메일 -->

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><span
												class="glyphicon glyphicon-user"></span> </span> <input type="text"
												class="form-control" placeholder=" Phone " id="uphone"
												name="uphone" />
										</div>
									</div>
									<!-- 휴대전화번호 -->

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control" placeholder="Address" id="uaddress"
												name="uaddress" />
										</div>
									</div>
									<!-- 주소 -->
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"> <span
												class="glyphicon glyphicon-home"></span></span> <input type="text"
												class="form-control" placeholder="Postal code" id="upost"
												name="upost" />
										</div>
									</div>
									<!-- 우편번호 -->

									<button class="btn btn-lg btn-primary btn-block" type="submit"
										id="btnsend" style="display: block;">가입하기</button>
									<button class="btn btn-lg btn-primary btn-block" type="button"
										onclick="location.href='${pageContext.request.contextPath }'">돌아가기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->

</html>
