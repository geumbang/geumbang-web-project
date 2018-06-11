<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>

<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<script src="scripts/sha256.js" type="text/javascript"></script>
<style>
.hidden {
	width: 100%;
	height: 50px;
}

.graphDiv {
	
}

.tableDiv{
margin-top : -20px;
}

#table thead{

}
</style>

</head>


<body>
	<jsp:include page="header.jsp"></jsp:include>


	<div class="wrapper">
		<div class="container">
			<!--/.span3-->


			<div class="hidden"></div>
			<div class="col-12">
				<div
					class="d-flex align-items-center p-2 my-3 bg-warning  box-shadow">

					<div class="lh-100">
						<h3>일별 예측값</h3>
					</div>
				</div>

				<!-- 일별 예측 그래프 -->
				<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
				<hr>
			</div>

			<div class="hidden"></div>
			<div class="col-12 ">
				<div
					class="d-flex align-items-center p-2 my-3 bg-warning  box-shadow">

					<div class="lh-100">
						<h3>월별 예측값</h3>
					</div>
				</div>

				<!--월별 예측 그래프 -->
				<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
				<div class="span12" style="margin: 0 auto; float: initial;">
					<div class="content"></div>
					<!--/.span9-->
				</div>
				<hr>
			</div>

			<div class="hidden"></div>




			<div class="col-12 ">
				<div
					class="d-flex align-items-center p-2 my-3 bg-warning  box-shadow">

					<div class="lh-100">
						<h3>금값 예측</h3>
						<small>
							<button type="button" class="forecast_select btn btn-sm"
								id="daily">Daily</button>
							<button type="button" class="forecast_select btn btn-sm"
								id="monthly">Monthly</button>
						</small>
					</div>
				</div>
				<table id="table" class="table table-striped border tableDiv">
					<thead class ="thead-dark border border-dark">
						<tr>
							<th scope="col" width="10%">#</th>
							<th scope="col" width="30%">날짜</th>
							<th scope="col" width="20%">예측값</th>
							<th scope="col" width="20%">최소값</th>
							<th scope="col" width="20%">최대값</th>
							<th scope="col" width="10%">&nbsp;</th>
						</tr>
					</thead>
				</table>
			
			</div>


			<!--월별 예측 값   -->

			<br>
		</div>
		<!--/.container-->
		<br>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/forecastchart.js" type="text/javascript"></script>
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
		charset="utf-8"></script>
</body>
</html>