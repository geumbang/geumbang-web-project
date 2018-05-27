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
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<style>
.gray {
	color: gray;
	font-size: 15px;
}

.symbol-target {
	padding-top: 160px;
	margin-top: -150px;
	width: 1px; /* '0' will not work for Opera */
	display: inline-block;
}

#space {
	width: 1px;
	height: 30px;
}

#msgDiv {
	margin-top: 200px;
	width: 100%;
	height: 800px;
	text-align: center;
}

#msgSpan {
	font-size: 30px;
}

#loginForm{
margin-top :100px;
text-align:center;
height : 500px;

}
</style>
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>

	<div id="space"></div>
	<div id="space"></div>

	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">
  
			<div id="loginForm">
				<span>${msg }</span> <span>${loginUser }</span>
				<form action="login.do" method="post" name="frm">
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" id="inputEmail"
							aria-describedby="emailHelp" name="userEmail"> 
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="inputPwd" name="userPwd">
					</div>
					<button type="submit" class="btn btn-primary" id="loginBtn">로그인</button>
					<button type="button" class="btn btn-primary" id="joinBtn">회원가입</button>
				</form>

			</div>


		</div>
		<!--/.container-->

	</div>



	<!--/.wrapper-->
	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2018 Keumbang.com </b>All rights
			reserved.
		</div>
	</div>
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
			
			$('#loginBtn').on('click',function(){
				return loginCheck();
			});

			
			$('#joinBtn').on('click', function() {
				window.location.href = 'joinForm.do';

			});
			
			
			function loginCheck() {
				if(document.frm.userEmail.value.length == 0) {
					alert('이메일을 입력해주세요.');
				   frm.userEmail.focus();
				   return false;
				}

				if(document.frm.userPwd.value.length == 0){
				alert('비밀번호를 입력해주세요.');
				frm.userPwd.focus();
				return false;
				}
				
				
				
			}

		});
	</script>
</body>
</html>