<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<style>
#msgDiv {
	width: 70%;
	height: 600px;
	margin: 100px auto;
	text-align: center;
}

#msgSpan {
	font-size: 30px;
	margin-bottom: 20px;
}
</style>

<script>
$(document).ready(function() {
	$('#loginBtn').on('click',function(){
		location.href = 'loginForm.do';
		
	});
		

	
});
</script>
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>


	<div class="container">

		<div id="msgDiv">
			<div id="msgSpan">회원가입에 성공하셨습니다!</div>
			<button type="button"
				class="btn btn-outline-warning btn-lg btn-block" id="loginBtn">로그인
				바로가기</button>

		</div>




	</div>





	<!--/.wrapper-->
	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>