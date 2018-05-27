<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Keumbang.com</title>
</head>
<body>  
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner"
			style="min-height: 60px; background-color: rgba(0, 0, 0, 0.7); text-align: center;">
			<div class="container">
				<a class="logo" href="main.do">Keumbang.com</a>
			</div>    
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i></a>
				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li><a href="forecast.do" style="text-shadow: none;">예측시세</a></li>
						<li><a href="main.do" style="text-shadow: none;">국제시세</a></li>
						<li><a class="brand" href="main.do" style="color: #FFCC00;">Keumbang.com
						</a></li>
						<li><a href="joinForm.do" style="text-shadow: none;">회원가입</a></li>
						<c:choose>
						<c:when test="${empty loginUser }">
						<li><a href="loginForm.do" style="text-shadow: none;">로그인</a></li>
						</c:when>
						<c:otherwise>
						<li><a href="logout.do" style="text-shadow: none;">로그아웃</a></li>
						</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>
</body>
</html>