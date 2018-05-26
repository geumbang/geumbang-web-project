<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/sha256.js" type="text/javascript"></script>
<style>
body {
	background-color: black;
}
</style>

</head>


<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- /navbar -->
		<div id="space"></div>
		<div id="space"></div>
	<div class="wrapper">
	<jsp:include page="leftSide.jsp"></jsp:include>
		<div class="container">
			<!--/.span3-->
			
			<div class="span12" style="margin: 0 auto; float: initial;">
				<div class="content">
				</div>
				<!--/.span9-->
			</div>
			<div class="module-head">
				<h3>일별 예측값</h3>
			</div>
			<!-- 일별 예측 그래프 -->
			<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
			<br>
			<div class="module-head">
				<h3>월별 예측값</h3>
			</div>
			<!--월별 예측 그래프  -->
			<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
			<div class="span12" style="margin: 0 auto; float: initial;">
				<div class="content">
				</div>
				<!--/.span9-->
			</div>
			
			<div class="module-head">
				<h3>
					금값 예측
					<button type="button" class="forecast_select btn btn-warning"
						id="daily">Daily</button>
					<button type="button" class="forecast_select btn btn-dark"
						id="monthly">Monthly</button>
				</h3>
			</div>
			<!--월별 예측 값   -->
			<table id="table" class="table table-striped table-dark">
				<thead>
					<tr>
						<th scope="col" align="center">#</th>
						<th scope="col" align="center">날짜</th>
						<th scope="col" align="center">예측값</th>
						<th scope="col" align="center">최소값</th>
						<th scope="col" align="center">최대값</th>
					</tr>
				</thead>
			</table>
			<br>
		</div>
		<!--/.container-->
		<br>
	</div>

	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2018 Keumbang.com </b>All rights reserved.
		</div>
	</div>
	
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/forecastchart.js" type="text/javascript"></script>
</body>
</html>