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
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/member.js"></script>
<script src="scripts/sha256.js" type="text/javascript"></script>
<style>
body {
	background-color: black;
}
</style>

<script>
	window.onload = function() {
		$.ajax({
			url : 'forecast_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				$('#table tr').filter(function(index) {
					return index != 0;
				}).remove();
				$.each(data.forecast_m,
						function(index, item) {
							var exRate = data.exrate;
							var gold_price = item.forecast_price;
							var gold_min = item.forecast_min;
							var gold_max = item.forecast_max;
							gold_price = gold_price / 28.35 * 3.75 * exRate;
							gold_price = Number(gold_price)
									.toLocaleString('en').split(".")[0]
									+ "원";
							gold_min = gold_min / 28.35 * 3.75 * exRate;
							gold_min = Number(gold_min).toLocaleString('en')
									.split(".")[0]
									+ "원";
							gold_max = gold_max / 28.35 * 3.75 * exRate;
							gold_max = Number(gold_max).toLocaleString('en')
									.split(".")[0]
									+ "원";
							var k_month = item.forecastM_date;
							var tr = $('<tr>');
							$('<td>').text(index + 1).appendTo(tr);
							$('<td>').text(k_month).appendTo(tr);
							$('<td>').text(gold_price).appendTo(tr);
							$('<td>').text(gold_min).appendTo(tr);
							$('<td>').text(gold_max).appendTo(tr);
							var td = $('<td>');
							td.appendTo(tr);
							tr.appendTo('#table');
						})
				/* 월별 예측 금 값  */
				var exRate = data.exrate;
				var daily = new Array();
				for (var i = 0; i < data.size_d; i++) {
					// 객체 생성
					var dataD = new Object();
					var date = data.forecast_d[i].forecastD_date;
					var year = data.forecast_d[i].forecastD_date
							.substring(0, 4);
					var month = data.forecast_d[i].forecastD_date.substring(5,
							7);
					var day = data.forecast_d[i].forecastD_date
							.substring(8, 10);
					dataD.x = new Date(year, month, day);
					gold_price = data.forecast_d[i].forecast_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					dataD.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					daily.push(dataD);
				}
				/*그래프 상에서 깔끔하게 보이는게 가독성이 있을것같아 주석처리할게요  */
				/* var daily_min = new Array();
				for (var i = 0; i < data.size_d; i++) {
					// 객체 생성
					var dataD = new Object();
					var date = data.forecast_d[i].forecastD_date;
					var year = data.forecast_d[i].forecastD_date
							.substring(0, 4);
					var month = data.forecast_d[i].forecastD_date.substring(5,
							7);
					var day = data.forecast_d[i].forecastD_date
							.substring(8, 10);
					dataD.x = new Date(year, month, day);
					gold_price = data.forecast_d[i].forecast_min;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					dataD.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					daily_min.push(dataD);
				}
				var daily_max = new Array();
				for (var i = 0; i < data.size_d; i++) {
					// 객체 생성
					var dataD = new Object();
					var date = data.forecast_d[i].forecastD_date;
					var year = data.forecast_d[i].forecastD_date
							.substring(0, 4);
					var month = data.forecast_d[i].forecastD_date.substring(5,
							7);
					var day = data.forecast_d[i].forecastD_date
							.substring(8, 10);
					dataD.x = new Date(year, month, day);
					gold_price = data.forecast_d[i].forecast_max;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					dataD.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					daily_max.push(dataD);
				} */
				var monthly = new Array();
				for (var i = 0; i < data.size_m; i++) {
					// 객체 생성
					var dataM = new Object();
					var date = data.forecast_m[i].forecastM_date;
					var year = data.forecast_m[i].forecastM_date
							.substring(0, 4);
					var month = data.forecast_m[i].forecastM_date.substring(5,
							7);
					var day = data.forecast_m[i].forecastM_date
							.substring(8, 10);
					dataM.x = new Date(year, month, day);
					gold_price = data.forecast_m[i].forecast_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					dataM.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					monthly.push(dataM);
				}
				/* var monthly_min = new Array();
				for (var i = 0; i < data.size_m; i++) {
					// 객체 생성
					var dataM = new Object();
					var date = data.forecast_m[i].forecastM_date;
					var year = data.forecast_m[i].forecastM_date
							.substring(0, 4);
					var month = data.forecast_m[i].forecastM_date.substring(5,
							7);
					var day = data.forecast_m[i].forecastM_date
							.substring(8, 10);
					dataM.x = new Date(year, month, day);
					gold_price = data.forecast_m[i].forecast_min;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					dataM.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					monthly_min.push(dataM);
				}
				var monthly_max = new Array();
				for (var i = 0; i < data.size_m; i++) {
					// 객체 생성
					var dataM = new Object();
					var date = data.forecast_m[i].forecastM_date;
					var year = data.forecast_m[i].forecastM_date
							.substring(0, 4);
					var month = data.forecast_m[i].forecastM_date.substring(5,
							7);
					var day = data.forecast_m[i].forecastM_date
							.substring(8, 10);
					dataM.x = new Date(year, month, day);
					gold_price = data.forecast_m[i].forecast_max;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					dataM.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					monthly_max.push(dataM);
				} */
				var chart2 = new CanvasJS.Chart("chartContainer2", {
					animationEnabled : true,
					theme : "light2",
					axisX : {
						valueFormatString : "DD MMM",
						crosshair : {
							enabled : true,
							snapToDataPoint : true
						}
					},
					axisY : {
						title : "Number of Visits",
						crosshair : {
							enabled : true
						}
					},
					toolTip : {
						shared : true
					},
					legend : {
						cursor : "pointer",
						verticalAlign : "bottom",
						horizontalAlign : "left",
						dockInsidePlotArea : true,
						itemclick : toogleDataSeries
					},
					data : [ {
						type : "line",
						showInLegend : true,
						name : "Total Visit",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : monthly
					}/* , {
						type : "line",
						showInLegend : true,
						name : "Total Visit",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : monthly_min
					}, {
						type : "line",
						showInLegend : true,
						name : "Total Visit",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : monthly_max
					}  */]
				});
				chart2.render();
				function toogleDataSeries(e) {
					if (typeof (e.dataSeries.visible) === "undefined"
							|| e.dataSeries.visible) {
						e.dataSeries.visible = false;
					} else {
						e.dataSeries.visible = true;
					}
					chart2.render();
				}
				/* 일 별 예측 금값  */
				var chart1 = new CanvasJS.Chart("chartContainer1", {
					animationEnabled : true,
					theme : "light2",
					axisX : {
						valueFormatString : "DD MMM",
						crosshair : {
							enabled : true,
							snapToDataPoint : true
						}
					},
					axisY : {
						title : "Number of Visits",
						crosshair : {
							enabled : true
						}
					},
					toolTip : {
						shared : true
					},
					legend : {
						cursor : "pointer",
						verticalAlign : "bottom",
						horizontalAlign : "left",
						dockInsidePlotArea : true,
						itemclick : toogleDataSeries
					},
					data : [ {
						type : "line",
						showInLegend : true,
						name : "Total Visit",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : daily
					}/* , {
						type : "line",
						showInLegend : true,
						name : "Total Visit",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : daily_min
					}, {
						type : "line",
						showInLegend : true,
						name : "Total Visit",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : daily_max
					}  */]
				});
				chart1.render();
				function toogleDataSeries(e) {
					if (typeof (e.dataSeries.visible) === "undefined"
							|| e.dataSeries.visible) {
						e.dataSeries.visible = false;
					} else {
						e.dataSeries.visible = true;
					}
					chart1.render();
				}
			}
		})
		
		$(".forecast_select")
				.on(
						'click',
						function() {
							var forecastId = $(this).attr('id')
							$
									.ajax({
										url : 'forecast_ajax.do',
										type : 'get',
										dataType : 'json',
										success : function(data) {
											if (forecastId == "daily") {
												$('#table tr').filter(
														function(index) {
															return index != 0;
														}).remove();
												$
														.each(
																data.forecast_d,
																function(index,
																		item) {
																	var exRate = data.exrate;
																	var gold_price = item.forecast_price;
																	var gold_min = item.forecast_min;
																	var gold_max = item.forecast_max;
																	gold_price = gold_price
																			/ 28.35
																			* 3.75
																			* exRate;
																	gold_price = Number(
																			gold_price)
																			.toLocaleString(
																					'en')
																			.split(
																					".")[0]
																			+ "원";
																	gold_min=gold_min/ 28.35
																	* 3.75
																	* exRate;
																	gold_max=gold_max/28.35
																	*3.75
																	*exRate;
																	gold_min=Number(
																			gold_min)
																			.toLocaleString(
																					'en')
																			.split(
																					".")[0]
																			+ "원";
																	gold_max=Number(
																			gold_max)
																			.toLocaleString(
																					'en')
																			.split(
																					".")[0]
																			+ "원";
																	var k_month = item.forecastD_date;
																	var tr = $('<tr>');
																	$('<td>')
																			.text(
																					index + 1)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					k_month)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					gold_price)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					gold_min)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					gold_max)
																			.appendTo(
																					tr);
																	var td = $('<td>');
																	td
																			.appendTo(tr);
																	tr
																			.appendTo('#table');
																})
											} else if (forecastId == "monthly") {
												$('#table tr').filter(
														function(index) {
															return index != 0;
														}).remove();
												$
														.each(
																data.forecast_m,
																function(index,
																		item) {
																	var exRate = data.exrate;
																	var gold_price = item.forecast_price;
																	var gold_min = item.forecast_min;
																	var gold_max = item.forecast_max;
																	gold_price = gold_price
																			/ 28.35
																			* 3.75
																			* exRate;
																	gold_price = Number(
																			gold_price)
																			.toLocaleString(
																					'en')
																			.split(
																					".")[0]
																			+ "원";
																	gold_min = gold_min
																			/ 28.35
																			* 3.75
																			* exRate;
																	gold_min = Number(
																			gold_min)
																			.toLocaleString(
																					'en')
																			.split(
																					".")[0]
																			+ "원";
																	gold_max = gold_max
																			/ 28.35
																			* 3.75
																			* exRate;
																	gold_max = Number(
																			gold_max)
																			.toLocaleString(
																					'en')
																			.split(
																					".")[0]
																			+ "원";
																	var k_month = item.forecastM_date;
																	var tr = $('<tr>');
																	$('<td>')
																			.text(
																					index + 1)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					k_month)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					gold_price)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					gold_min)
																			.appendTo(
																					tr);
																	$('<td>')
																			.text(
																					gold_max)
																			.appendTo(
																					tr);
																	var td = $('<td>');
																	td
																			.appendTo(tr);
																	tr
																			.appendTo('#table');
																})
											}
										}
									})
						})
	}
</script>
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
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
</body>
</html>