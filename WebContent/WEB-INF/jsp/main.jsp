<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>
<script src="scripts/countUp.js"></script>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
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

#interDiv {
	margin: 40px 0;
}

#someDiv {
	
}

.inBtn {
	margin-right: 8px;
}

.hideDiv {
	width: 100%;
	height: 40px;
}

#realValDiv {
	margin-top: 10px;
}

.span4 {
	padding: 3px;
}

.priceDiv {
	height: 170px;
	text-align: center;
	
}

.wonSpan {
	font-size: 24px;
	font-weight: 480;
	text-shadow: 0px 1px #ffffff, 1.5px 2px 0px #dad7d7;
}
  
.title {
	font-size: 24px;
	font-weight: 500;

	
}

.compare {
	font-size: 14px;
}

.ngoldSpan{
color :#FF9900;
}
</style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<!-- /navbar -->
	<div class="wrapper">
		<div class="container">

			<div class="hideDiv"></div>

			<div id="realTimeDiv">

				<span class="symbol-target" id="myTarget">&nbsp;</span> <a
					name="factors" style="margin-top: 50px;"></a>
				<div class="content">
					<div
						class="d-flex align-items-center p-2 my-3 bg-warning rounded box-shadow">


						<div class="lh-100">
							<h2 class="mb-0 lh-100">실시간 금시세</h2>
							<small>&nbsp;실시간 금시세 ( 최근 업데이트 : <fmt:formatDate
									value="${goldPrice.gold_date }" pattern="yyyy-MM-dd hh:mm" />
								)
							</small>
						</div>
					</div>     
   
					<div class="btn-controls" id="realValDiv">
						<input id="endVal1" type="hidden" value="${goldPriceResult[0]}">
						<input id="endVal2" type="hidden" value="${goldPriceResult[2]}">
						<input id="endVal3" type="hidden" value="${goldPriceResult[4]}">

						<div class="btn-box-row row-fluid ">
							<div class="btn-box big span4 bg-light rounded priceDiv">
								<br> <span class="title">&nbsp;금(<span class="ngoldSpan">24K</span>) /3.75g </span>
								<hr class="border-secondary">
								<p>
									<span class="wonSpan">&nbsp;&#8361 <span id="countUp1">0</span>원
									</span> <br>
									<span class="compare">&nbsp;(전일대비
										${goldPriceResult[6]}원)</span>
								</p>
							</div>


							<div class="btn-box big span4 bg-light rounded priceDiv">
								<br> <span class="title">&nbsp;금(<span class="ngoldSpan">18K</span>) /3.75g </span>
								<hr class="border-secondary">
								<p>
									<span class="wonSpan">&nbsp;&#8361 <span id="countUp2">0</span>원
									</span> <br>
									<span class="compare"> &nbsp;(전일대비
										${goldPriceResult[8]}원)</span>
								</p>
							</div>



							<div class="btn-box big span4 bg-light rounded priceDiv">
								<br> <span class="title">&nbsp;금(<span class="ngoldSpan">14K</span>) /3.75g </span>
								<hr class="border-secondary">

								<p>
									<span class="wonSpan">&nbsp;&#8361 <span id="countUp3">0</span>원
									</span> <br>
									<span class="compare"> &nbsp;(전일대비
										${goldPriceResult[10]}원)</span>
								</p>


							</div>


						</div>

					</div>
				</div>
			</div>
			<!--/#btn-controls-->
			<div class="hideDiv"></div>
			<div class="module" id="interDiv">


				<div class="module-head">
					<div
						class="d-flex align-items-center p-2 my-3 bg-warning rounded box-shadow">

						<div class="lh-100">
							<h2 class="mb-0 lh-100">
								금 국제시세 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								<div class="btn-group" role="group" aria-label="method">
									<button type="button"
										class="select btn btn-light btn-warning btn-sm inBtn"
										id="1989">1989년 이후</button>
									<button type="button"
										class="select btn btn-light btn-warning btn-sm inBtn"
										id="10years">최근 10년</button>
									<button type="button"
										class="select btn btn-light btn-warning btn-sm inBtn"
										id="1year">최근 1년</button>
									<button type="button"
										class="select btn btn-light btn-warning btn-sm inBtn"
										id="week">최근 1달</button>
								</div>
							</h2>

						</div>
					</div>
					<div class="module-body">
						<div class="chart inline-legend grid">
							<div id="placeholder2" style="height: 300px; width: 100%;"></div>
						</div>
					</div>
				</div>


			</div>


			<div class="hideDiv"></div>
			<!--/.module-->
			<!-- <div class="module" id="someDiv">
				<div class="module-head">
					<h3>Adjust Budget Range</h3>
				</div>
				<div class="module-body">
					<div class="form-inline clearfix">
						<a href="#" class="btn pull-right">Update</a> <label for="amount">
							Price range:</label> &nbsp; <input type="text" id="amount" class="input-" />
					</div>
					<hr />
					<div class="slider-range"></div>
				</div>
			</div>
 -->


		</div>
		<!--/.container-->
    
		<div class="hideDiv"></div>



		<!--/.wrapper-->

		<jsp:include page="footer.jsp"></jsp:include>

		<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
		<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
		<script src="scripts/moment.js" type="text/javascript"></script>
		<script src="scripts/flot/jquery.flot.resize.js"
			type="text/javascript"></script>
		<script src="scripts/datatables/jquery.dataTables.js"
			type="text/javascript"></script>
		<script src="scripts/mainchart.js" type="text/javascript"></script>
		<script type="text/javascript"
			src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
			charset="utf-8"></script>
		<script type="text/javascript">
			$(document)
					.ready(
							function() {

								for (var i = 1; i < 4; i++) {
									var countUp = document
											.getElementById("countUp" + i);
									var endVal = document
											.getElementById("endVal" + i).value;
									var numAnim = new CountUp(countUp,
											100000.00, endVal, 2, 3);
									numAnim.start(function() {
										numAnim.update(endVal);
									});
								}

							});
		</script>

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
												: $('[name='
														+ this.hash.slice(1)
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