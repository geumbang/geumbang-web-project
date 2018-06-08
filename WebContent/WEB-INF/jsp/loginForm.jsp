<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<style>
#space {
	width: 1px;
	height: 30px;
	margin: 0 auto;
}

#msgDiv {
	width: 100%;
	height: 30px;
	text-align: left;
}

#formDiv {
	margin-top: -40px;
	padding: 40px;
}
</style>
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>

	<div id="space"></div>
	<div id="space"></div>

	<!-- /navbar -->
	<div class="wrapper">




		<div class="container " id="formDiv">


			<form class="form-signin" action="login.do" method="post" name="frm">

				<h2 class="h3 mb-3 font-weight-normal">KEUMBANG 회원이신가요?</h2>
				<hr>
				<div id="msgDiv" class="text-danger">${msg }</div>
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" class="form-control" id="inputEmail"
					aria-describedby="emailHelp" name="userEmail" required autofocus>
				<br> <label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" id="inputPwd" name="userPwd"
					required>

				<div class="checkbox mb-3">
					<label> <input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				<div id="naverIdLogin"></div>
				</br> <a id="kakao-login-btn"></a> <a
					href="http://developers.kakao.com/logout"></a></br></br>
				<button class="btn btn-lg btn-primary btn-block" type="submit"
					id="loginBtn">로그인</button>
				<p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>

			</form>


		</div>
		<!--/.container-->

	</div>



	<!--/.wrapper-->
	<jsp:include page="footer.jsp"></jsp:include>


	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
		charset="utf-8"></script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type='text/javascript'>
		//<![CDATA[
		// 사용할 앱의 JavaScript 키를 설정해 주세요.
		Kakao.init('4a1b09291960587e98224d92f79026b1');
		// 카카오 로그인 버튼을 생성합니다.
		Kakao.Auth.createLoginButton({
			container : '#kakao-login-btn',
			success : function(authObj) {
				var access_token = 'Authorizstion= Bearer '+authObj.access_token;
				var refresh_token ='refresh_token='+authObj.refresh_token;
				Kakao.API.request({
					url : '/v2/user/me',
					success :function(resultObj){
						var email = resultObj.kakao_account.email
					   var userName =resultObj.properties.nickname
						var userId =resultObj.id
						window.location.replace("http://localhost:8080/Keumbang.com/loginKakao.do?userId="+userId+"&email="+email+"&userName="+userName)
					},fail :function(errorObj){
						alert("다시 한번 시도해 주세요.")
					}
				})
					
			},
			fail : function(err) {
				alert(JSON.stringify(err));
			}
		});
		//]]>
	</script>
	<script type="text/javascript">
		$(document).ready(function() {

			$('#loginBtn').on('click', function() {
				return loginCheck();
			});

			$('#joinBtn').on('click', function() {
				window.location.href = 'joinForm.do';

			});

			function loginCheck() {
				if (document.frm.userEmail.value.length == 0) {
					alert('이메일을 입력해주세요.');
					frm.userEmail.focus();
					return false;
				}

				if (document.frm.userPwd.value.length == 0) {
					alert('비밀번호를 입력해주세요.');
					frm.userPwd.focus();
					return false;
				}

			}

		});
	</script>
	<script type="text/javascript">
		var naverLogin = new naver.LoginWithNaverId({
			clientId : "nVEqlZN8RaXPEqCIczNM",
			callbackUrl : "http://localhost:8080/Keumbang.com/callback.do",
			isPopup : false, /* 팝업을 통한 연동처리 여부 */
			loginButton : {
				color : "green",
				type : 3,
				height : 60
			}
		/* 로그인 버튼의 타입을 지정 */
		});

		/* 설정정보를 초기화하고 연동을 준비 */
		naverLogin.init();
	</script>
</body>
</html>