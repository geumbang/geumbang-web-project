/**
 * 
 */
window.onload = function() {
		$.ajax({
			url : 'history_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				/* 월별 예측 금 값  */		
				var exRate = data.exrate;
				
				var price = new Array();
				for (var i = 0; i < data.size; i++) {
					
					// 객체 생성					
					
					var price_data = new Object();
					var date = data.accuracy[i].date;
					var year = data.accuracy[i].date.substring(0, 4);
					var month = data.accuracy[i].date.substring(5,7);
					month *= 1;
					month=month-1;
					month = String(month);
					var day = data.accuracy[i].date.substring(8, 10);
					price_data.x = new Date(year, month, day);
					gold_price = data.accuracy[i].goldPrice;
					gold_price = gold_price / 31.1035 * 3.75 * exRate;
					price_data.y = Math.floor(gold_price, 2)
					// 리스트에 생성된 객체 삽입
					price.push(price_data);
				}
				
				var forecast = new Array();
				for (var i = 0; i < data.size; i++) {
					// 객체 생성					
					
					var forecast_data = new Object();
					var date = data.accuracy[i].date;
					var year = data.accuracy[i].date.substring(0, 4);
					var month = data.accuracy[i].date.substring(5,7);
					month *= 1;
					month=month-1;
					month = String(month);
					var day = data.accuracy[i].date.substring(8, 10);
					forecast_data.x = new Date(year, month, day);
					gold_forecast = data.accuracy[i].goldForecast;
					gold_forecast = gold_forecast / 31.1035 * 3.75 * exRate;
					forecast_data.y = Math.floor(gold_forecast, 2)
					// 리스트에 생성된 객체 삽입
					forecast.push(forecast_data);
				}
				
				var chart2 = new CanvasJS.Chart("hhh2", {
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
						itemclick : toogleDataSeries_1
					},
					data : [ {
						type : "line",
						showInLegend : true,
						name : "실제 금값",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#05B088",
						dataPoints : price
					},{
						type : "line",
						showInLegend : true,
						name : "keumbang.com 금값",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : forecast
					}]
				});
				chart2.render();
				
				function toogleDataSeries_1(e) {
					if (typeof (e.dataSeries.visible) === "undefined"
							|| e.dataSeries.visible) {
						e.dataSeries.visible = false;
					} else {
						e.dataSeries.visible = true;
					}
					chart2.render();
				}
		
				/* 월별 예측 금 값  */		
				
				var today = data.sizeToday
				var exRate = data.exrate
				
				
				var forecastOur_d = new Array();
				for (var i = 0; i < data.size_d; i++) {
					
					// 객체 생성					
					var our_d_data = new Object();
					var ourDate_d =data.forecast_d[i].forecastD_date
					ourDate_d = moment(ourDate_d).format('YYYY-MM-DD');
					var year = ourDate_d.substring(0, 4);
					var month = ourDate_d.substring(5,7);
					month *= 1;
					month=month-1;
					month = String(month);
					var day = ourDate_d.substring(8, 10);
					our_d_data.x = new Date(year, month, day);
					var ourGold_d =data.forecast_d[i].forecast_price
					ourGold_d = ourGold_d/ 31.1035 * 3.75 * exRate;
					ourGold_d = Math.floor(ourGold_d,0)
					our_d_data.y = Math.floor(ourGold_d, 2)
					// 리스트에 생성된 객체 삽입
					forecastOur_d.push(our_d_data);
				}
				
				var forecastOur_m = new Array();
				for (var i = 0; i < 10; i++) {
					
					// 객체 생성					
					var our_m_data = new Object();
					var ourDate_m =data.forecast_m[i].forecastM_date
					ourDate_m = moment(ourDate_m).format('YYYY-MM-DD');
					var year = ourDate_m.substring(0, 4);
					var month = ourDate_m.substring(5,7);
					month *= 1;
					month=month-1;
					month = String(month);
					var day = ourDate_m.substring(8, 10);
					our_m_data.x = new Date(year, month, day);
					var ourGold_m =data.forecast_m[i].forecast_price
					ourGold_m = ourGold_m/ 31.1035 * 3.75 * exRate;
					ourGold_m = Math.floor(ourGold_m,0)
					our_m_data.y = Math.floor(ourGold_m, 2)
					// 리스트에 생성된 객체 삽입
					forecastOur_m.push(our_m_data);
				}
				
				var todaySite_1 = new Array();
				var todaySite_2 = new Array();
				var todaySite_3 = new Array();
				for (var i = 0; i < today; i++) {
					
					// 객체 생성					
					var site1_data = new Object();
					var site2_data = new Object();
					var site3_data = new Object();
					var dateToday = data.forecastOthersToday[i].f_others_date
					dateToday = moment(dateToday).format('YYYY-MM-DD');
					var year = dateToday.substring(0, 4);
					var month = dateToday.substring(5,7);
					month *= 1;
					month=month-1;
					month = String(month);
					var day = dateToday.substring(8, 10);
					var priceToday = data.forecastOthersToday[i].f_others_price
					priceToday = priceToday / 31.1035 * 3.75 * exRate;
					priceToday = Math.floor(priceToday, 0)
					
					var checkToday = data.forecastOthersToday[i].f_others_site;
					
					if (checkToday == 1) {
					site1_data.x = new Date(year, month, day);
					site1_data.y = Math.floor(priceToday, 2)
					todaySite_1.push(site1_data);
					
					} else if (checkToday == 2) {
						site2_data.x = new Date(year, month, day);
						site2_data.y = Math.floor(priceToday, 2)
						todaySite_2.push(site2_data);
						
					} else if (checkToday == 3) {
						site3_data.x = new Date(year, month, day);
						site3_data.y = Math.floor(priceToday, 2)
						todaySite_3.push(site3_data);
						
					}
					// 리스트에 생성된 객체 삽입
				}
				
				var comparison_chart = new CanvasJS.Chart("comparisonchart", {
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
						name : "keumbang.com 금값",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#05B088",
						dataPoints : forecastOur_d
					},{
						type : "line",
						showInLegend : true,
						name : "The Economy Forecast Agency 금값",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : todaySite_2
					}]
				});
				comparison_chart.render();
				
				function toogleDataSeries(e) {
					if (typeof (e.dataSeries.visible) === "undefined"
							|| e.dataSeries.visible) {
						e.dataSeries.visible = false;
					} else {
						e.dataSeries.visible = true;
					}
					comparison_chart.render();
				}
			}
		})
	
	}

$('.daily-forecast').click(function() {
	$.ajax({
		url : 'history_ajax.do',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			/* 월별 예측 금 값  */		
			var exRate = data.exrate;
			
			var price = new Array();
			for (var i = 0; i < data.size; i++) {
				
				// 객체 생성					
				
				var price_data = new Object();
				var date = data.accuracy[i].date;
				var year = data.accuracy[i].date.substring(0, 4);
				var month = data.accuracy[i].date.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = data.accuracy[i].date.substring(8, 10);
				price_data.x = new Date(year, month, day);
				gold_price = data.accuracy[i].goldPrice;
				gold_price = gold_price / 31.1035 * 3.75 * exRate;
				price_data.y = Math.floor(gold_price, 2)
				// 리스트에 생성된 객체 삽입
				price.push(price_data);
			}
			
			var forecast = new Array();
			for (var i = 0; i < data.size; i++) {
				// 객체 생성					
				
				var forecast_data = new Object();
				var date = data.accuracy[i].date;
				var year = data.accuracy[i].date.substring(0, 4);
				var month = data.accuracy[i].date.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = data.accuracy[i].date.substring(8, 10);
				forecast_data.x = new Date(year, month, day);
				gold_forecast = data.accuracy[i].goldForecast;
				gold_forecast = gold_forecast / 31.1035 * 3.75 * exRate;
				forecast_data.y = Math.floor(gold_forecast, 2)
				// 리스트에 생성된 객체 삽입
				forecast.push(forecast_data);
			}
			
			var chart2 = new CanvasJS.Chart("hhh2", {
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
					itemclick : toogleDataSeries_1
				},
				data : [ {
					type : "line",
					showInLegend : true,
					name : "실제 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#05B088",
					dataPoints : price
				},{
					type : "line",
					showInLegend : true,
					name : "keumbang.com 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#F08080",
					dataPoints : forecast
				}]
			});
			chart2.render();
			
			function toogleDataSeries_1(e) {
				if (typeof (e.dataSeries.visible) === "undefined"
						|| e.dataSeries.visible) {
					e.dataSeries.visible = false;
				} else {
					e.dataSeries.visible = true;
				}
				chart2.render();
			}
	
			/* 월별 예측 금 값  */		
			
			var today = data.sizeToday
			var exRate = data.exrate
			
			
			var forecastOur_d = new Array();
			for (var i = 0; i < data.size_d; i++) {
				
				// 객체 생성					
				var our_d_data = new Object();
				var ourDate_d =data.forecast_d[i].forecastD_date
				ourDate_d = moment(ourDate_d).format('YYYY-MM-DD');
				var year = ourDate_d.substring(0, 4);
				var month = ourDate_d.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = ourDate_d.substring(8, 10);
				our_d_data.x = new Date(year, month, day);
				var ourGold_d =data.forecast_d[i].forecast_price
				ourGold_d = ourGold_d/ 31.1035 * 3.75 * exRate;
				ourGold_d = Math.floor(ourGold_d,0)
				our_d_data.y = Math.floor(ourGold_d, 2)
				// 리스트에 생성된 객체 삽입
				forecastOur_d.push(our_d_data);
			}
			
			var forecastOur_m = new Array();
			for (var i = 0; i < 10; i++) {
				
				// 객체 생성					
				var our_m_data = new Object();
				var ourDate_m =data.forecast_m[i].forecastM_date
				ourDate_m = moment(ourDate_m).format('YYYY-MM-DD');
				var year = ourDate_m.substring(0, 4);
				var month = ourDate_m.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = ourDate_m.substring(8, 10);
				our_m_data.x = new Date(year, month, day);
				var ourGold_m =data.forecast_m[i].forecast_price
				ourGold_m = ourGold_m/ 31.1035 * 3.75 * exRate;
				ourGold_m = Math.floor(ourGold_m,0)
				our_m_data.y = Math.floor(ourGold_m, 2)
				// 리스트에 생성된 객체 삽입
				forecastOur_m.push(our_m_data);
			}
			
			var todaySite_1 = new Array();
			var todaySite_2 = new Array();
			var todaySite_3 = new Array();
			for (var i = 0; i < today; i++) {
				
				// 객체 생성					
				var site1_data = new Object();
				var site2_data = new Object();
				var site3_data = new Object();
				var dateToday = data.forecastOthersToday[i].f_others_date
				dateToday = moment(dateToday).format('YYYY-MM-DD');
				var year = dateToday.substring(0, 4);
				var month = dateToday.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = dateToday.substring(8, 10);
				var priceToday = data.forecastOthersToday[i].f_others_price
				priceToday = priceToday / 31.1035 * 3.75 * exRate;
				priceToday = Math.floor(priceToday, 0)
				
				var checkToday = data.forecastOthersToday[i].f_others_site;
				
				if (checkToday == 1) {
				site1_data.x = new Date(year, month, day);
				site1_data.y = Math.floor(priceToday, 2)
				todaySite_1.push(site1_data);
				
				} else if (checkToday == 2) {
					site2_data.x = new Date(year, month, day);
					site2_data.y = Math.floor(priceToday, 2)
					todaySite_2.push(site2_data);
					
				} else if (checkToday == 3) {
					site3_data.x = new Date(year, month, day);
					site3_data.y = Math.floor(priceToday, 2)
					todaySite_3.push(site3_data);
					
				}
				// 리스트에 생성된 객체 삽입
			}
			
			var comparison_chart = new CanvasJS.Chart("comparisonchart", {
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
					name : "keumbang.com 일별 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#05B088",
					dataPoints : forecastOur_d
				},{
					type : "line",
					showInLegend : true,
					name : "The Enonomy Forecast Agency",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#F08080",
					dataPoints : todaySite_2
				}]
			});
			comparison_chart.render();
			
			function toogleDataSeries(e) {
				if (typeof (e.dataSeries.visible) === "undefined"
						|| e.dataSeries.visible) {
					e.dataSeries.visible = false;
				} else {
					e.dataSeries.visible = true;
				}
				comparison_chart.render();
			}
		}
	})

})

$('.monthly-forecast').click(function() {
	$.ajax({
		url : 'history_ajax.do',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			/* 월별 예측 금 값  */		
			var exRate = data.exrate;
			
			var price = new Array();
			for (var i = 0; i < data.size; i++) {
				
				// 객체 생성					
				
				var price_data = new Object();
				var date = data.accuracy[i].date;
				var year = data.accuracy[i].date.substring(0, 4);
				var month = data.accuracy[i].date.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = data.accuracy[i].date.substring(8, 10);
				price_data.x = new Date(year, month, day);
				gold_price = data.accuracy[i].goldPrice;
				gold_price = gold_price / 31.1035 * 3.75 * exRate;
				price_data.y = Math.floor(gold_price, 2)
				// 리스트에 생성된 객체 삽입
				price.push(price_data);
			}
			
			var forecast = new Array();
			for (var i = 0; i < data.size; i++) {
				// 객체 생성					
				
				var forecast_data = new Object();
				var date = data.accuracy[i].date;
				var year = data.accuracy[i].date.substring(0, 4);
				var month = data.accuracy[i].date.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = data.accuracy[i].date.substring(8, 10);
				forecast_data.x = new Date(year, month, day);
				gold_forecast = data.accuracy[i].goldForecast;
				gold_forecast = gold_forecast / 31.1035 * 3.75 * exRate;
				forecast_data.y = Math.floor(gold_forecast, 2)
				// 리스트에 생성된 객체 삽입
				forecast.push(forecast_data);
			}
			
			var chart2 = new CanvasJS.Chart("hhh2", {
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
					itemclick : toogleDataSeries_1
				},
				data : [ {
					type : "line",
					showInLegend : true,
					name : "실제 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#05B088",
					dataPoints : price
				},{
					type : "line",
					showInLegend : true,
					name : "keumbang.com 일별 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#F08080",
					dataPoints : forecast
				}]
			});
			chart2.render();
			
			function toogleDataSeries_1(e) {
				if (typeof (e.dataSeries.visible) === "undefined"
						|| e.dataSeries.visible) {
					e.dataSeries.visible = false;
				} else {
					e.dataSeries.visible = true;
				}
				chart2.render();
			}
	
			/* 월별 예측 금 값  */		
			
			var today = data.sizeToday
			var exRate = data.exrate
			
			
			var forecastOur_d = new Array();
			for (var i = 0; i < data.size_d; i++) {
				
				// 객체 생성					
				var our_d_data = new Object();
				var ourDate_d =data.forecast_d[i].forecastD_date
				ourDate_d = moment(ourDate_d).format('YYYY-MM-DD');
				var year = ourDate_d.substring(0, 4);
				var month = ourDate_d.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = ourDate_d.substring(8, 10);
				our_d_data.x = new Date(year, month, day);
				var ourGold_d =data.forecast_d[i].forecast_price
				ourGold_d = ourGold_d/ 31.1035 * 3.75 * exRate;
				ourGold_d = Math.floor(ourGold_d,0)
				our_d_data.y = Math.floor(ourGold_d, 2)
				// 리스트에 생성된 객체 삽입
				forecastOur_d.push(our_d_data);
			}
			
			var forecastOur_m = new Array();
			for (var i = 0; i < 10; i++) {
				
				// 객체 생성					
				var our_m_data = new Object();
				var ourDate_m =data.forecast_m[i].forecastM_date
				ourDate_m = moment(ourDate_m).format('YYYY-MM-DD');
				var year = ourDate_m.substring(0, 4);
				var month = ourDate_m.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = ourDate_m.substring(8, 10);
				our_m_data.x = new Date(year, month, day);
				var ourGold_m =data.forecast_m[i].forecast_price
				ourGold_m = ourGold_m/ 31.1035 * 3.75 * exRate;
				ourGold_m = Math.floor(ourGold_m,0)
				our_m_data.y = Math.floor(ourGold_m, 2)
				// 리스트에 생성된 객체 삽입
				forecastOur_m.push(our_m_data);
			}
			
			var todaySite_1 = new Array();
			var todaySite_2 = new Array();
			var todaySite_3 = new Array();
			for (var i = 0; i < today; i++) {
				
				// 객체 생성					
				var site1_data = new Object();
				var site2_data = new Object();
				var site3_data = new Object();
				var dateToday = data.forecastOthersToday[i].f_others_date
				dateToday = moment(dateToday).format('YYYY-MM-DD');
				var year = dateToday.substring(0, 4);
				var month = dateToday.substring(5,7);
				month *= 1;
				month=month-1;
				month = String(month);
				var day = dateToday.substring(8, 10);
				var priceToday = data.forecastOthersToday[i].f_others_price
				priceToday = priceToday / 31.1035 * 3.75 * exRate;
				priceToday = Math.floor(priceToday, 0)
				
				var checkToday = data.forecastOthersToday[i].f_others_site;
				
				if (checkToday == 1) {
				site1_data.x = new Date(year, month, day);
				site1_data.y = Math.floor(priceToday, 2)
				todaySite_1.push(site1_data);
				
				} else if (checkToday == 2) {
					site2_data.x = new Date(year, month, day);
					site2_data.y = Math.floor(priceToday, 2)
					todaySite_2.push(site2_data);
					
				} else if (checkToday == 3) {
					site3_data.x = new Date(year, month, day);
					site3_data.y = Math.floor(priceToday, 2)
					todaySite_3.push(site3_data);
					
				}
				// 리스트에 생성된 객체 삽입
			}
			
			var comparison_chart = new CanvasJS.Chart("comparisonchart", {
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
					name : "keumbang.com 월별 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#05B088",
					dataPoints : forecastOur_m
				},{
					type : "line",
					showInLegend : true,
					name : "The Economy Forecast Agency 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#F08080",
					dataPoints : todaySite_1
				},{
					type : "line",
					showInLegend : true,
					name : "The Financial Forecast Center 금값",
					markerType : "square",
					xValueFormatString : "DD MMM, YYYY",
					color : "#F08080",
					dataPoints : todaySite_3
				}]
			});
			comparison_chart.render();
			
			function toogleDataSeries(e) {
				if (typeof (e.dataSeries.visible) === "undefined"
						|| e.dataSeries.visible) {
					e.dataSeries.visible = false;
				} else {
					e.dataSeries.visible = true;
				}
				comparison_chart.render();
			}
		}
	})

})