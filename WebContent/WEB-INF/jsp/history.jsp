<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>
<link rel="stylesheet" href="css/reset.css">

<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">

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

.wrapper{
border-top : 1px solid black;
}
</style>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="wrapper">
		<div class="container">
			<!--/.span3-->
			<div class="span12" style="margin: 0 auto; float: initial;">
				<div id="space"></div>
				<div class="content">
					
					<div class="module" style="overflow: hidden">
						<div class="module-head">
							<span><b style="color: black">Keumbang.com 예측값 vs 실제 금값 &nbsp;</b></span> <!-- <input type="button" value="전체기간"
								class="select-session btn btn-default btn-xs" id="all">
							<input type="button" value="최근 10년"
								class="select-session btn btn-default btn-xs" id="10years">
							<input type="button" value="최근 1년"
								class="select-session btn btn-default btn-xs" id="1year"> -->
						</div>

						<div class="module-body" style="padding: 0;">
							<div id="space"></div>
							<div id="hhh2"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>

						</div>

					</div>
					<div id="space"></div>
					<div class="module" style="overflow: hidden">

						<div class="module-head">
							<span><b style="color: black">Keumbang.com 예측값 vs 타 예측기관 예측값 &nbsp;</b></span> <input type="button" value="일별 예측"
								class="daily-forecast btn btn-default btn-xs"> <input
								type="button" value="월별 예측"
								class="monthly-forecast btn btn-default btn-xs">
						</div>
						<div class="module-body" style="padding: 0;">
							<div id="space"></div>
							<div id="comparisonchart"
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
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/historychart.js" type="text/javascript"></script>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
</body>
</html>