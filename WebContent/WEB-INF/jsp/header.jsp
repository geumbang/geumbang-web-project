<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
	integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
	crossorigin="anonymous"></script>
<title>금방</title>
</head>

<style>
</style>
<body>

	<%-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="main.do"> &nbsp; <img
			src="images/goldImg.png" width="30" height="30" alt="">
			Keumbang.com
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample07" aria-controls="navbarsExample07"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample07">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="forecast.do">예측시세 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="history.do">신뢰도</a></li>



			</ul>
			<form class="form-inline my-2 my-md-0">
				<ul class="navbar-nav mr-auto">
					<c:choose>
						<c:when test="${empty loginUser }">
							<li class="nav-item navbar-right"><a class="nav-link"
								href="joinForm.do">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="#">${loginUser.userName}
									님 </a></li>

						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${empty loginUser }">
							<li class="nav-item"><a class="nav-link" href="loginForm.do">로그인</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
						</c:otherwise>
					</c:choose>

				</ul>
			</form>
		</div>
	</div>
	</nav>
 --%>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="main.do"> &nbsp; <img
		src="images/goldImg.png" width="30" height="30" alt="">
		Keumbang.com
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExample05" aria-controls="navbarsExample05"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExample05">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="forecast.do">예측시세 <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="history.do">신뢰도</a></li>
			<li class="nav-item"><a class="nav-link" href="payment.do">상품구매</a></li>
			



		</ul>
		<form class="form-inline my-2 my-md-0">
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty loginUser }">
						<li class="nav-item navbar-right"><a class="nav-link"
							href="joinForm.do">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link" href="#">${loginUser.userName}
								님 </a></li>

					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when test="${empty loginUser }">
						<li class="nav-item"><a class="nav-link" href="loginForm.do">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
					</c:otherwise>
				</c:choose>

			</ul>

		</form>
	</div>
	</nav>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

</body>


</html>