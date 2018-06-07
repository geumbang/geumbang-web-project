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
	margin-top: 10px;
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
			<div id="paymentDiv">

				<span class="symbol-target" id="myTarget">&nbsp;</span> <a
					name="factors" style="margin-top: 50px;"></a>
				<div class="content">
					<div
						class="d-flex align-items-center p-2 my-3 bg-warning rounded box-shadow">

						<div class="lh-100">
							<h2 class="mb-0 lh-100">주문상품 &nbsp;</h2>
						</div>
					</div>

				</div>
				<div class="module-body">
					<div class="chart inline-legend grid">
						<div id="placeholder2" style="height: 150px; width: 100%;">
							<div id="accordion" role="tablist">
								<div class="card">
									<div class="card-header" role="tab" id="headingOne">
										<h5 class="mb-0">
											<a data-toggle="collapse" aria-expanded="true"
												aria-controls="collapseOne"> 1. Keumbang.com 예측서비스 </a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 300,000 원 / 1 달
										</h5>
									</div>

									<button type="button"
										class="btn btn-secondary list-group-item list-group-item-dark  list-group-item-action">
										1달 - 300,000원</button>
									<button type="button"
										class="list-group-item btn-secondary list-group-item-action">6개월
										- 1,500,000원</button>
									<button type="button"
										class="list-group-item btn-secondary list-group-item-action">1년
										- 2,000,00원</button>

								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="hideDiv"></div>
				<div id="paymentDiv">

					<span class="symbol-target" id="myTarget">&nbsp;</span> <a
						name="factors" style="margin-top: 50px;"></a>
					<div class="content">
						<div
							class="d-flex align-items-center p-2 my-3 bg-warning rounded box-shadow">

							<div class="lh-100">
								<h2 class="mb-0 lh-100">
									결제수단 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									<div class="btn-group" role="group" aria-label="method">
										<button type="button" class="payment btn btn-light inBtn"
											id="">신용카드</button>
										<button type="button" class="payment btn btn-light inBtn"
											id="">실시간 계좌이체</button>
										<button type="button" class="payment btn btn-light inBtn"
											id="">무통장 입금</button>
								</h2>
							</div>
						</div>

					</div>
					<div class="module-body">
						<div class="chart inline-legend grid">
							<div id="placeholder2" style="height: 100px; width: 100%;">
								<div id="accordion">
									<div class="card">
										<div class="card-header">
											<h5 class="mb-0">
												<a aria-expanded="true"> 신용카드 </a>
											</h5>
										</div>
										<ul class="list-group">
											<li class="list-group-item">결제
												금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 300,000 원</li>
											<li class="list-group-item">카드
												선택&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
												<button class="btn btn-secondary dropdown-toggle"
													type="button" id="dropdownMenuButton"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">비씨카드</button>
												<div class="dropdown-menu"
													aria-labelledby="dropdownMenuButton">
													<a class="dropdown-item" href="#">농협카드</a> <a
														class="dropdown-item" href="#">삼성카드</a> <a
														class="dropdown-item" href="#">진리카드</a>
												</div>
											</li>
										</ul>

									</div>

								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="hideDiv"></div>
				<div id="paymentDiv">

					<span class="symbol-target" id="myTarget">&nbsp;</span> <a
						name="factors" style="margin-top: 50px;"></a>
					<div class="content">
						<div
							class="d-flex align-items-center p-2 my-3 bg-warning rounded box-shadow">

							<div class="lh-100">
								<h2 class="mb-0 lh-100">
									이용약관 동의 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn btn-light" type="button">모두 동의</button>
								</h2>
							</div>
						</div>

					</div>
					<div class="module-body">
						<div class="chart inline-legend grid">
							<div id="placeholder2" style="height: 650px; width: 100%;">
								<div id="accordion" role="tablist">
									<div class="card">
										<div class="card-header" role="tab" id="headingOne">
											<h5 class="mb-0">
												<a data-toggle="collapse" href="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne"> 위 주문의
													상품, 가격 정보에 동의 </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<button class="btn btn-secondary" type="button">동의</button>
											</h5>
										</div>

										<div id="collapseOne" class="collapse show" role="tabpanel"
											aria-labelledby="headingOne" data-parent="#accordion">
											<div class="card-body">1. 개인정보의 수집∙이용 목적 - 구매한 물품의
												배송/설치 등 고객과 체결한 계약의 이행 - 불만처리 등을 위한 본인확인에 이용 2. 수집하려는 개인정보의
												항목 (필수) 받는 고객명, 배송주소, 배송연락처, 결제수단 정보(신용카드, 계좌번호 등 결제수단에 따름),
												개인통관고유부호(해외직구 상품 구매시에 한함) (선택) 추가 연락처 3. 개인정보의 보유 및 이용 기간 -
												수집 목적 달성시 까지 - 단, 관계 법령의 규정에 의하여 일정기간 보유하여야 할 필요가 있는 경우 해당기간
												동안 보관합니다. - 법령에 따라 보유하여야 하는 기간은 홈페이지 하단의 ‘개인정보 처리방침’을 참고하시기
												바랍니다. 고객님께서는 위와 같은 개인정보 수집에 동의를 거부하실 수 있습니다. 다만, 필수항목 동의 거부시
												서비스 이용이 제한되며, 선택 항목에 동의를 거부하시는 경우 서비스 제공은 가능하나, 배송정보의 추가 안내
												등이 제한될 수 있습니다.</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" role="tab" id="headingTwo">
											<h5 class="mb-0">
												<a class="collapsed" data-toggle="collapse"
													href="#collapseTwo" aria-expanded="false"
													aria-controls="collapseTwo"> 개인정보 수집 이용 동의 </a>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<button class="btn btn-secondary" type="button">동의</button>
											</h5>
										</div>
										<div id="collapseTwo" class="collapse" role="tabpanel"
											aria-labelledby="headingTwo" data-parent="#accordion">
											<div class="card-body">1. 개인정보의 수집∙이용 목적 - 구매한 물품의
												배송/설치 등 고객과 체결한 계약의 이행 - 불만처리 등을 위한 본인확인에 이용 2. 수집하려는 개인정보의
												항목 (필수) 받는 고객명, 배송주소, 배송연락처, 결제수단 정보(신용카드, 계좌번호 등 결제수단에 따름),
												개인통관고유부호(해외직구 상품 구매시에 한함) (선택) 추가 연락처 3. 개인정보의 보유 및 이용 기간 -
												수집 목적 달성시 까지 - 단, 관계 법령의 규정에 의하여 일정기간 보유하여야 할 필요가 있는 경우 해당기간
												동안 보관합니다. - 법령에 따라 보유하여야 하는 기간은 홈페이지 하단의 ‘개인정보 처리방침’을 참고하시기
												바랍니다. 고객님께서는 위와 같은 개인정보 수집에 동의를 거부하실 수 있습니다. 다만, 필수항목 동의 거부시
												서비스 이용이 제한되며, 선택 항목에 동의를 거부하시는 경우 서비스 제공은 가능하나, 배송정보의 추가 안내
												등이 제한될 수 있습니다.</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" role="tab" id="headingThree">
											<h5 class="mb-0">
												<a class="collapsed" data-toggle="collapse"
													href="#collapseThree" aria-expanded="false"
													aria-controls="collapseThree"> 결제서비스 이용약관 동의 </a>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<button class="btn btn-secondary" type="button">동의</button>
											</h5>
										</div>
										<div id="collapseThree" class="collapse" role="tabpanel"
											aria-labelledby="headingThree" data-parent="#accordion">
											<div class="card-body">1. 개인정보의 수집∙이용 목적 - 구매한 물품의
												배송/설치 등 고객과 체결한 계약의 이행 - 불만처리 등을 위한 본인확인에 이용 2. 수집하려는 개인정보의
												항목 (필수) 받는 고객명, 배송주소, 배송연락처, 결제수단 정보(신용카드, 계좌번호 등 결제수단에 따름),
												개인통관고유부호(해외직구 상품 구매시에 한함) (선택) 추가 연락처 3. 개인정보의 보유 및 이용 기간 -
												수집 목적 달성시 까지 - 단, 관계 법령의 규정에 의하여 일정기간 보유하여야 할 필요가 있는 경우 해당기간
												동안 보관합니다. - 법령에 따라 보유하여야 하는 기간은 홈페이지 하단의 ‘개인정보 처리방침’을 참고하시기
												바랍니다. 고객님께서는 위와 같은 개인정보 수집에 동의를 거부하실 수 있습니다. 다만, 필수항목 동의 거부시
												서비스 이용이 제한되며, 선택 항목에 동의를 거부하시는 경우 서비스 제공은 가능하나, 배송정보의 추가 안내
												등이 제한될 수 있습니다.</div>
										</div>
									</div>
									<div id="paymentDiv">

										<span class="symbol-target" id="myTarget">&nbsp;</span> <a
											name="factors" style="margin-top: 50px;"></a>
										<div class="module-body">
											<div class="chart inline-legend grid">
												<div id="placeholder2"
													style="text-align: center; height: 100px; width: 100%;">
													<button class="btn btn-warning" type="button">
														<h2 class="mb-0 lh-100">결제하기</h2>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!--/.container-->

			<div class="hideDiv"></div>

		</div>
		<!--/.wrapper-->
		<div class="hideDiv"></div>
		<div class="hideDiv"></div>
		<div class="hideDiv"></div>
		<div class="hideDiv"></div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
		<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="scripts/jquery-ui-1.10.1.custom.min.js"
			type="text/javascript"></script>

		<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
		<script src="scripts/moment.js" type="text/javascript"></script>
		<script src="scripts/flot/jquery.flot.resize.js"
			type="text/javascript"></script>
		<script src="scripts/datatables/jquery.dataTables.js"
			type="text/javascript"></script>
</body>
</html>