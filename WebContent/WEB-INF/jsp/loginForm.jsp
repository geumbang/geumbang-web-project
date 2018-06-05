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
margin-top :-40px;

padding : 40px;
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
				<img class="mb-4"
					src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg"
					alt="" width="72" height="72">
				<h2 class="h3 mb-3 font-weight-normal">KEUMBANG 회원이신가요? </h2>
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
	<script src="scripts/mainchart.js" type="text/javascript"></script>
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
</body>
</html>