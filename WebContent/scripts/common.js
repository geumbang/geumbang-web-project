$(document).ready(function() {

	$.ajax({
		url : 'index_ajax.do',
		type : 'get',
		dataType : 'json',
		success : function(data) {
			var d1 = [];

			var size = data.sizeByMonth;
			var i = 0;
			var h = 1989;
			var label = ""

			var exRate = data.exrate

			for (var i = 0; i < size; i++) {

				var fr_id = i;
				var gold_price = data.byMonth[fr_id].gold_price;
				gold_price = gold_price / 28.35 * 3.75 * exRate;
				gold_price = Math.floor(gold_price, 2)

				factor = []
				factor.push(h);
				h += 1 / 12; //x축 카테고리
				factor.push(gold_price);
				d1.push(factor)
				label = "원/1돈"
			}

			factor_data(d1, label)
		}
	})

});

function factor_data(d1, label) {

	if ($('.datatable-1').length > 0) {
		$('.datatable-1').dataTable();
		$('.dataTables_paginate').addClass('btn-group datatable-pagination');
		$('.dataTables_paginate > a').wrapInner('<span />');
		$('.dataTables_paginate > a:first-child').append(
				'<i class="icon-chevron-left shaded"></i>');
		$('.dataTables_paginate > a:last-child').append(
				'<i class="icon-chevron-right shaded"></i>');

		$('.slider-range').slider({
			range : true,
			min : 0,
			max : 20000,
			values : [ 3000, 12000 ],
			slide : function(event, ui) {
				$(this).find('.ui-slider-handle').attr('title', ui.value);
			},
		});

		$('#amount').val(
				'$' + $('.slider-range').slider('values', 0) + ' - $'
						+ $('.slider-range').slider('values', 1));

		// Graph/Chart index.html

		var plot = $.plot($('#placeholder2'), [ {
			data : d1,
			label : label
		} ], {
			lines : {
				show : true,
				fill : true,
				lineWidth : 2
			},
			points : {
				show : true,
				lineWidth : 5
			},
			grid : {
				clickable : true,
				hoverable : true,
				autoHighlight : true,
				mouseActiveRadius : 10,
				aboveData : true,
				backgroundColor : '#fff',
				borderWidth : 0,
				minBorderMargin : 25,
			},
			colors : [ '#55f3c0', '#0db37e', '#b4fae3', '#e0d1cb' ],
			shadowSize : 0
		});

		function showTooltip(x, y, contents) {
			$('<div id="gridtip">' + contents + '</div>').css({
				position : 'absolute',
				display : 'none',
				top : y + 5,
				left : x + 5
			}).appendTo('body').fadeIn(300);
		}

		var previousPoint = null;
		$('#placeholder2')
				.bind(
						'plothover',
						function(event, pos, item) {
							$('#x').text(pos.x.toFixed(2));
							$('#y').text(pos.y.toFixed(2));

							if (item) {
								if (previousPoint != item.dataIndex) {
									previousPoint = item.dataIndex;

									$('#gridtip').remove();
									var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
											.toFixed(0);

									showTooltip(item.pageX, item.pageY, 'x : '
											+ x + '&nbsp;&nbsp;&nbsp; y : ' + y);
								}
							} else {
								$('#gridtip').remove();
								previousPoint = null;
							}
						});
	}
}

function factor_data_non(d1, label) {

	if ($('.datatable-1').length > 0) {
		$('.datatable-1').dataTable();
		$('.dataTables_paginate').addClass('btn-group datatable-pagination');
		$('.dataTables_paginate > a').wrapInner('<span />');
		$('.dataTables_paginate > a:first-child').append(
				'<i class="icon-chevron-left shaded"></i>');
		$('.dataTables_paginate > a:last-child').append(
				'<i class="icon-chevron-right shaded"></i>');

		$('.slider-range').slider({
			range : true,
			min : 0,
			max : 20000,
			values : [ 3000, 12000 ],
			slide : function(event, ui) {
				$(this).find('.ui-slider-handle').attr('title', ui.value);
			},
		});

		$('#amount').val(
				'$' + $('.slider-range').slider('values', 0) + ' - $'
						+ $('.slider-range').slider('values', 1));

		// Graph/Chart index.html

		var plot = $.plot($('#placeholder2'), [ {
			data : d1,
			label : label
		} ], {
			lines : {
				show : true,
				fill : false,
				lineWidth : 2
			},
			points : {
				show : true,
				lineWidth : 5
			},
			grid : {
				clickable : true,
				hoverable : true,
				autoHighlight : true,
				mouseActiveRadius : 10,
				aboveData : true,
				backgroundColor : '#fff',
				borderWidth : 0,
				minBorderMargin : 25,
			},
			colors : [ '#55f3c0', '#0db37e', '#b4fae3', '#e0d1cb' ],
			shadowSize : 0
		});

		function showTooltip(x, y, contents) {
			$('<div id="gridtip">' + contents + '</div>').css({
				position : 'absolute',
				display : 'none',
				top : y + 5,
				left : x + 5
			}).appendTo('body').fadeIn(300);
		}

		var previousPoint = null;
		$('#placeholder2')
				.bind(
						'plothover',
						function(event, pos, item) {
							$('#x').text(pos.x.toFixed(2));
							$('#y').text(pos.y.toFixed(2));

							if (item) {
								if (previousPoint != item.dataIndex) {
									previousPoint = item.dataIndex;

									$('#gridtip').remove();
									var x = item.datapoint[0].toFixed(0), y = item.datapoint[1]
											.toFixed(0);

									showTooltip(item.pageX, item.pageY, 'x : '
											+ x + '&nbsp;&nbsp;&nbsp; y : ' + y);
								}
							} else {
								$('#gridtip').remove();
								previousPoint = null;
							}
						});
	}
}


$('.select').click(function() {
	var selectId = $(this).attr('id')

	if (selectId == "monthly-1989") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var label = ""

				var size = data.sizeByMonth;
				var i = 0;
				var h = 1989;

				var exRate = data.exrate

				for (var i = 0; i < size; i++) {

					var fr_id = i;
					var gold_price = data.byMonth[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)
					

					gold_price_data = []
					gold_price_data.push(h);

					

					h += 1 / 12;

					gold_price_data.push(gold_price);
					d1.push(gold_price_data)

				}

					label = "원/1돈"
					factor_data(d1, label)
			}
		})
	}

	if (selectId == "monthly-10") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				
				var label = ""

				var size = data.sizeByMonth;
				var i = 0;
				var h = 2018 + 1 / 12;

				var exRate = data.exrate

				for (var i = size - 1; i > size - 121; i--) {

					var fr_id = i;
					var gold_price = data.byMonth[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)

					gold_price_data = []
					gold_price_data.push(h);


					h -= 1 / 12;

					gold_price_data.push(gold_price);
					d1.push(gold_price_data)

				}

					label = "원/1돈"
					factor_data(d1, label)
			}
		})
	}

	if (selectId == "daily-1") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var label = ""

				var size = data.sizeByDaily;
				var i = 0;
				var h = 0;

				var exRate = data.exrate

				for (var i = size - 1; i > size - 365; i--) {
					var fr_id = i;
					var gold_price = data.byDaily[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)

					gold_price_data = []
					gold_price_data.push(h);

					h -= 1 / 30;

					gold_price_data.push(gold_price);
					d1.push(gold_price_data)

				}

					label = "원/1돈"
					factor_data_non(d1, label)
			}
		})
	}

	if (selectId == "week-daily-time") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
	
				var label = ""

				var size = data.size;

				var j = 0;

				var exRate = data.exrate
				for (var i = size; i > size - 24 * 7; i--) {

					var fr_id = size - i;
					var gold_price = data.recentAll[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)

					gold_price_data = []
					gold_price_data.push(j);
					gold_price_data.push(gold_price);

					d1.push(gold_price_data)

					j = j - 1 / 24;

				}

					label = "원/1돈"
					factor_data_non(d1, label)
			}
		})
	}

	if (selectId == "daily-time") {

		$.ajax({
			url : 'index_ajax.do',
			type : 'get',
			dataType : 'json',
			success : function(data) {
				var d1 = [];
				var label = ""

				var size = data.size;

				var j = 0;
				var exRate = data.exrate
				for (var i = size; i > size - 24; i--) {

					var fr_id = size - i;
					var gold_price = data.recentAll[fr_id].gold_price;
					gold_price = gold_price / 28.35 * 3.75 * exRate;
					gold_price = Math.floor(gold_price, 2)

					gold_price_data = []
					gold_price_data.push(j);
					gold_price_data.push(gold_price);

					d1.push(gold_price_data)

					j = j - 1;

				}

					label = "원/1돈"
					factor_data_non(d1, label)
			}
		})
	}

})