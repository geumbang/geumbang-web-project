/**
 * 
 */
window.onload = function() {
		$.ajax({
			url : 'main_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				/* 월별 예측 금 값  */
				
				var exRate = data.exrate;
				
				var goldprice_d = new Array();
				for (var i = 0; i < data.size_d; i++) {
					// 객체 생성					
					
					var dataD = new Object();
					var date = data.goldprice_d[i].date;
					date=date.toString();
					var year = date.substring(0, 4);
					var month = date.substring(5,7);
					var day = date.substring(8, 10);
					dataD.x = new Date(year, month, day);
					gold_price_d = data.goldprice_d[i].goldPrice
					gold_price_d = gold_price_d / 28.35 * 3.75 * exRate;
					dataD.y = Math.floor(gold_price_d, 2)
					// 리스트에 생성된 객체 삽입
					goldprice_d.push(dataD);
				}
				
				var goldprice_r = new Array();
				for (var i = 0; i < data.size_r; i++) {
					// 객체 생성					
					
					var dataR = new Object();
					var date = data.goldprice_r[i].gold_date;
					date =new Date(date);
					date = getFormatDate(date);
					date=date.toString();
					var year = date.substring(0, 4);
					var month = date.substring(4,6);
					var day = date.substring(6, 8);
					dataR.x = new Date(year, month, day);
					gold_price_r = data.goldprice_r[i].gold_buy
					gold_price_r = gold_price_r / 28.35 * 3.75 * exRate;
					dataR.y = Math.floor(gold_price_r, 2)
					// 리스트에 생성된 객체 삽입
					goldprice_r.push(dataR);
				}
				
				var chart2 = new CanvasJS.Chart("placeholder2", {
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
						title : "금 국제시세",
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
						name : "금값",
						markerType : "square",
						xValueFormatString : "DD MMM, YYYY",
						color : "#F08080",
						dataPoints : goldprice_r
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
			}
		})
	}

function getFormatDate(date){
	
	var year = date.getFullYear();                                 //yyyy
	var month = (1 + date.getMonth());                     //M
	month = month >= 10 ? month : '0' + month;     // month 두자리로 저장
	var day = date.getDate();                                        //d
	day = day >= 10 ? day : '0' + day;                            //day 두자리로 저장
	return  year + '' + month + '' + day;

}
