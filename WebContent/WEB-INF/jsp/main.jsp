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
<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
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
</style>
</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>
	
	<div id="space"></div>
		<div id="space"></div>

	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">
			<div class="span3" style="display: none;">
				<div class="sidebar">
					<ul class="widget widget-menu unstyled">
						<li class="active"><a href="index.html"><i
								class="menu-icon icon-dashboard"></i>Dashboard </a></li>
						<li><a href="activity.html"><i
								class="menu-icon icon-bullhorn"></i>News Feed </a></li>
						<li><a href="message.html"><i
								class="menu-icon icon-inbox"></i>Inbox <b
								class="label green pull-right"> 11</b> </a></li>
						<li><a href="task.html"><i class="menu-icon icon-tasks"></i>Tasks
								<b class="label orange pull-right"> 19</b> </a></li>
					</ul>
					<!--/.widget-nav-->


					<ul class="widget widget-menu unstyled">
						<li><a href="ui-button-icon.html"><i
								class="menu-icon icon-bold"></i> Buttons </a></li>
						<li><a href="ui-typography.html"><i
								class="menu-icon icon-book"></i>Typography </a></li>
						<li><a href="form.html"><i class="menu-icon icon-paste"></i>Forms
						</a></li>
						<li><a href="table.html"><i class="menu-icon icon-table"></i>Tables
						</a></li>
						<li><a href="charts.html"><i
								class="menu-icon icon-bar-chart"></i>Charts </a></li>
					</ul>
				</div>
				<!--/.sidebar-->
			</div>

			<!--/.span3-->
			<div class="span12"
				style="margin: 0 auto; float: initial; clear: both;">

				<span class="symbol-target" id="myTarget">&nbsp;</span> <a
					name="factors" style="margin-top: 50px;"></a>
				<div class="content">
					<div class="module-head">

						<h3>
							실시간 금시세 ( 최근 업데이트 :
							<fmt:formatDate value="${goldPrice.gold_date }"
								pattern="yyyy-MM-dd hh:mm" />
							)
						</h3>
					</div>

					<div class="btn-controls">
						<br>
						<div class="btn-box-row row-fluid ">
							<div class="btn-box big span4 ">
										<span> </br>금(24K) <span class="gray">/3.75g </span>
											<hr>
											<p class="text-muted">${goldPriceResult[0]}
												<span class="gray">원 (전일대비 ${goldPriceResult[6]}원)</br> &nbsp;</span> 
											</p>
										</span> 
							</div>
							<div class="btn-box big span4 ">
										<span class="side"> </br>금(18K) <span class="gray">/3.75g</span>
											<hr>
											<p class="text-muted">${goldPriceResult[2]}
												<span class="gray">원 (전일대비 ${goldPriceResult[8]}원)</br> &nbsp;</span>
											</p>
										</span> 
							</div>
							<div class="btn-box big span4 ">
										<span class="side"> </br>금(14K) <span class="gray">/3.75g</span>
											<hr>
											<p class="text-muted">${goldPriceResult[4]}
												<span class="gray">원 (전일대비 ${goldPriceResult[10]}원)</br> &nbsp;</span>
											</p>
										</span> 
									</div>
								</div>

							</div>
						</div>
					</div>
					<!--/#btn-controls-->
					<div id="space"></div>
					<div class="module">
						<div class="module-head">
							<h3>금 연관 요인 기간별 변동 그래프
							<input type="button" value="1989년 이후"
								class="select btn btn-default btn-xs" id="1989">
							<input type="button" value="최근 10년"
								class="select btn btn-default btn-xs" id="10years"> <input
								type="button" value="최근 1년"
								class="select btn btn-default btn-xs" id="1year"> <input
								type="button" value="최근 일주일"
								class="select btn btn-default btn-xs" id="week"> <input
								type="button" value="실시간 " class="select btn btn-default btn-xs"
								id="daily-time">
							</h3>
						</div>
						<div class="module-body">
							<div class="chart inline-legend grid">
								<div id="placeholder2" style="height: 300px; width: 100%;"></div>
							</div>
						</div>
					</div>
					<!--/.module-->
					<div class="module hide">
						<div class="module-head">
							<h3>Adjust Budget Range</h3>
						</div>
						<div class="module-body">
							<div class="form-inline clearfix">
								<a href="#" class="btn pull-right">Update</a> <label
									for="amount"> Price range:</label> &nbsp; <input type="text"
									id="amount" class="input-" />
							</div>
							<hr />
							<div class="slider-range"></div>
						</div>
					</div>
					<div id="space"></div>
				
			<!--/.span9-->
			<!--</div>-->
		</div>
		<!--/.container-->

	</div>

	<!--/.wrapper-->
	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2018 Keumbang.com </b>All rights reserved.
		</div>
	</div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
	<script src="scripts/mainchart.js" type="text/javascript"></script>
	<script>
		$(function() {
			$('a[href*="#"]:not([href="#"])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										&& location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html, body').animate({
											scrollTop : target.offset().top
										}, 1000);
										return false;
									}
								}
							});
		});
	</script>
</body>
</html>