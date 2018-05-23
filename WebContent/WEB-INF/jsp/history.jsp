<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<style type="text/css">
.highcharts-credits {
	display: none;
}

.highcharts-container {
	margin: 0 auto;
}

.highcharts-title {
	display: none;
}
</style>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- /navbar -->
	<div class="center-join2 accuracy_img">
		<div id="space"></div>
	</div>
	<div class="wrapper">
	<jsp:include page="leftSide.jsp"></jsp:include>
		<div class="container">
			<!--/.span3-->
			<div class="span12" style="margin: 0 auto; float: initial;">
				<div id="space"></div>
				<div class="content">
					
					<div class="module" style="overflow: hidden">
						<div class="module-head">
							<span><b style="color: black">Keumbang.com 예측모델을 통한 산출된 값과
									실제 금 가격 비교 &nbsp;</b></span> <input type="button" value="전체기간"
								class="select-session btn btn-default btn-xs" id="all">
							<input type="button" value="최근 10년"
								class="select-session btn btn-default btn-xs" id="10years">
							<input type="button" value="최근 1년"
								class="select-session btn btn-default btn-xs" id="1year">
						</div>

						<div class="module-body" style="padding: 0;">
							<div id="space"></div>
							<div id="container2"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>

						</div>

					</div>
					<div id="space"></div>
					<div class="module" style="overflow: hidden">

						<div class="module-head">
							<span><b style="color: black">Keumbang.com 예측모델을 통한 산출된 값과
									타 예측기관 예측값 비교 &nbsp;</b></span> <input type="button" value="일별 예측"
								class="daily-forecast btn btn-default btn-xs"> <input
								type="button" value="월별 예측"
								class="monthly-forecast btn btn-default btn-xs">
						</div>
						<div class="module-body" style="padding: 0;">
							<div id="space"></div>
							<div id="container3"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>

						</div>
						<div id="space"></div>
					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
		</div>
		<!--/.container-->
		<div id="space"></div>
	</div>

	<!--/.wrapper-->
	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2018 Keumbang.com </b>All rights reserved. 
		</div>
	</div>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/piechart.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/charts.js" type="text/javascript"></script>
</body>
</html>