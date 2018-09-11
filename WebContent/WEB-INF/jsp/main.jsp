<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Keumbang.com</title>
<script src="scripts/countUp.js"></script>
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrapper">
		<div class="container">
			<div class="d-flex flex-column p-2 my-3 bg-warning  box-shadow">
				<div class="p-1 h2">금값 예측</div>
				<div class="p-1">
					<small>
						<button type="button" class="forecast_select btn btn-sm btn-dark" id="daily">Daily</button>
						<button type="button" class="forecast_select btn btn-sm btn-dark" id="monthly">Monthly</button>
					</small>
				</div>
			</div>
			<table id="table" class="table table-striped border tableDiv text-center">
				<thead class ="thead-dark border border-dark">
					<tr>
						<th scope="col" width="5%">#</th>
						<th scope="col" width="25%">날짜</th>
						<th scope="col" width="30%">예측값</th>
						<th scope="col" width="20%">최소값</th>
						<th scope="col" width="20%">최대값</th>
						<th scope="col" width="10%">&nbsp;</th>
					</tr>
				</thead>
			</table>
			<!--월별 예측 값   -->
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="scripts/moment.js" type="text/javascript"></script>
	<script src="scripts/forecastchart.js" type="text/javascript"></script>
</body>
</html>