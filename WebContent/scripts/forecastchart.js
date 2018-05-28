/**
 * 
 */
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
							gold_price = gold_price / 31.1035 * 3.75 * exRate;
							gold_price = Number(gold_price)
									.toLocaleString('en').split(".")[0]
									+ "원";
							gold_min = gold_min / 31.1035 * 3.75 * exRate;
							gold_min = Number(gold_min).toLocaleString('en')
									.split(".")[0]
									+ "원";
							gold_max = gold_max / 31.1035 * 3.75 * exRate;
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
					month *= 1;
					month=month-1;
					month = String(month);
					var day = data.forecast_d[i].forecastD_date
							.substring(8, 10);
					dataD.x = new Date(year, month, day);
					gold_price = data.forecast_d[i].forecast_price;
					gold_price = gold_price / 31.1035 * 3.75 * exRate;
					dataD.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					daily.push(dataD);
				}
				
				var monthly = new Array();
				for (var i = 0; i < data.size_m; i++) {
					// 객체 생성
					var dataM = new Object();
					var date = data.forecast_m[i].forecastM_date;
					var year = data.forecast_m[i].forecastM_date
							.substring(0, 4);
					var month = data.forecast_m[i].forecastM_date.substring(5,
							7);
					month *= 1;
					month=month-1;
					month = String(month);
					var day = data.forecast_m[i].forecastM_date
							.substring(8, 10);
					dataM.x = new Date(year, month, day);
					gold_price = data.forecast_m[i].forecast_price;
					gold_price = gold_price / 31.1035 * 3.75 * exRate;
					dataM.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					monthly.push(dataM);
				}
				
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
						title : "Gold Price",
						crosshair : {
							enabled : true
						},
						maximum : 170000,
						minimum : 140000
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
						name : "금 예측값",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : monthly
					}]
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
						title : "Gold Price",
						crosshair : {
							enabled : true
						},
						maximum : 190000,
						minimum : 160000
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
						name : "금 예측값",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : daily
					}/* */]
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
																	gold_price = gold_price/ 31.1035
																			* 3.75
																			* exRate;
																	gold_price = Number(
																			gold_price)
																			.toLocaleString(
																					'en')
																			.split(
																					".")[0]
																			+ "원";
																	gold_min=gold_min/ 31.1035
																	* 3.75
																	* exRate;
																	gold_max=gold_max/31.1035
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
																			/ 31.1035
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
																			/ 31.1035
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
																			/ 31.1035
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