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
	margin-top:10px;
}

.span4 {
	padding: 3px;
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

						<div class="btn-box-row row-fluid ">
							<div class="btn-box big span4 bg-light rounded">
								<span> </br>&nbsp;금(24K) <span class="gray">/3.75g </span>
									<hr class="border-secondary">
									<p class="text-muted">${goldPriceResult[0]}
										<span class="gray">원 (전일대비 ${goldPriceResult[6]}원)</br>
											&nbsp;
										</span>
									</p>
								</span>
							</div>
							<div class="btn-box big span4 bg-light rounded">
								<span class="side"> </br>&nbsp;금(18K) <span class="gray">/3.75g</span>
									<hr class="border-secondary">
									<p class="text-muted">${goldPriceResult[2]}
										<span class="gray">원 (전일대비 ${goldPriceResult[8]}원)</br>
											&nbsp;
										</span>
									</p>
								</span>
							</div>
							<div class="btn-box big span4 bg-light rounded">
								<span class="side"> </br>&nbsp;금(14K) <span class="gray">/3.75g</span>
									<hr class="border-secondary">
									<p class="text-muted">${goldPriceResult[4]}
										<span class="gray">원 (전일대비 ${goldPriceResult[10]}원)</br>
											&nbsp;
										</span>
									</p>
								</span>
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
							<h2 class="mb-0 lh-100">금 국제시세 &nbsp;</h2>
							<small> <input type="button" value="1989년 이후"
								class="select btn btn-light btn-sm inBtn" id="1989"> <input
								type="button" value="최근 10년"
								class="select btn btn-light btn-sm inBtn" id="10years">
								<input type="button" value="최근 1년"
								class="select btn btn-light btn-sm inBtn" id="1year"> <input
								type="button" value="최근 1달"
								class="select btn btn-light btn-sm inBtn" id="week">
							</small>

						</div>

					</div>
				</div>
				<div class="module-body">
					<div class="chart inline-legend grid">
						<div id="placeholder2" style="height: 300px; width: 100%;"></div>
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

	</div>

	<!--/.wrapper-->

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"
		type="text/javascript"></script>
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