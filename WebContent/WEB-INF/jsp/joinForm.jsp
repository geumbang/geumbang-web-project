<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>
<link rel="stylesheet" href="css/reset.css">

<link type="text/css" href="images/icons/css/font-awesome.css"
	rel="stylesheet">
<script src="scripts/sha256.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="scripts/joinCheck.js"></script>
<style>
#joinFormDiv {
	margin-top: 30px;
}

#container {
	max-width: 100%;
	margin: 0 auto;
	margin-bottom: 100px;
}

#personal {
	height: 250px;
	overflow: scroll;
}

#joinInDiv {
	text-align: center;
	margin-top: 30px;
}

#joinInBTn {
	
}

#emailDiv {
	margin-top: 30px;
}

.chkSpan {
	
}

.wrapper-join {
	margin-top: 80px;
	margin-left: 50px;
	margin-right: 50px;
}

#joinForm {
	max-width: 100%;
	margin: 0 auto;
	margin-bottom: 100px;
}

.form-control {
	width: 100%;
	border: 1px solid #cccccc
}

.form-signin-heading {
	margin-bottom: 30px;
}

#joinFormBtn {
	margin-top: 30px;
}

#joinForm label {
	display: inline;
}

#joinTitle {
	width: 100%;
	text-align: center;
}

.valid-feedback {
	color: blue;
}

.invalid-feedback {
	color: red;
}

#personal {
	background-color: #ffffff;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrapper">
		<div class="container">

			<div class="wrapper-join">


				<div class="row" id="container">


					<div id="joinTitle">
						<h2>회 원 가 입</h2>

					</div>


					<div id="joinFormDiv" class="col-12">
						<form action="joinMember.do" method="post" name="frm">
							<div class="col-12 border">
								<div id="personal">
									<br> <span>
										<h4>제15조(개인정보의 수집ㆍ이용)</h4> <b><h5>① 개인정보처리자는 다음 각 호의
												어느 하나에 해당하는 경우에는 개인정보를 수집할 수 있으며 그 수집 목적의 범위에서 이용할 수 있다.</h5>1.
											정보주체의 동의를 받은 경우 </br>2. 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우 </br>3.
											공공기관이 법령 등에서 정하는 소관 업무의 수행을 위하여 불가피한 경우 </br>4. 정보주체와의 계약의 체결 및
											이행을 위하여 불가피하게 필요한 경우 </br>5. 정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나
											주소불명 등으로 사전 동의를 받을 수 없는 경우로서 명백히 정보주체 또는 제3자의 급박한 생명, 신체, 재산의
											이익을 위하여 필요하다고 인정되는 경우 </br>6. 개인정보처리자의 정당한 이익을 달성하기 위하여 필요한 경우로서
											명백하게 정보주체의 권리보다 우선하는 경우. 이 경우 개인정보처리자의 정당한 이익과 상당한 관련이 있고
											합리적인 범위를 초과하지 아니하는 경우에 한한다. </br> </br>
											<h5>② 개인정보처리자는 제1항제1호에 따른 동의를 받을 때에는 다음 각 호의 사항을 정보주체에게
												알려야 한다. 다음 각 호의 어느 하나의 사항을 변경하는 경우에도 이를 알리고 동의를 받아야 한다.</h5>1.
											개인정보의 수집·이용 목적 '금방'회사의 서비스 제공을 목적 </br>2. 수집하려는 개인정보의 항목
											휴대전화번호,이름,사업자등록사본,ID </br>3. 개인정보의 보유 및 이용 기간 회원 탈퇴 시까지 보유 </br>4. 동의를
											거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익이 있는 경우에는 그 불이익의 내용</b>
									</span> <br>
								</div>
								<hr>
								<div class="form-group row">

									<div class="col-sm-10">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="gridCheck1" name="joinAccept" value="1"> <label
												class="form-check-label" for="gridCheck1">동의합니다</label>
										</div>

									</div>
								</div>
							</div>

							<div class="form-group row" id="emailDiv">


								<div class="col-sm-7">
									<label for="inputEmail">이메일</label> <input type="email"
										name="userEmail" class="form-control" id="inputEmail"
										placeholder="이메일을 입력해주세요" required>
									<div id="emailMsg" class="msg"></div>
								</div>
							</div>


							<div class="form-group row" id="nameDiv">
								<div class="col-sm-7">
									<label for="inputName">이름</label> <input type="text"
										name="userName" class="form-control" id="inputName"
										placeholder="이름을 입력해주세요" required>
									<div id="nameMsg" class="msg"></div>
								</div>


							</div>





							<div class="form-group row" id="phoneDiv">
								<div class="col-sm-7">
									<label for="inputPhone">연락처</label> <input type="text"
										name="userPhone" class="form-control" id="inputPhone"
										placeholder="연락처를 입력해주세요" required>
									<div id="phoneMsg" class="msg"></div>
								</div>


							</div>


							<div class="form-group row" id="pwdDiv">

								<div class="col-sm-7">
									<label for="inputPassword">비밀번호</label> <input type="password"
										name="userPwd" class="form-control" id="inputPassword"
										placeholder="비밀번호를 입력해주세요" required>
									<div id="pwdMsg" class="msg"></div>
								</div>


							</div>

							<div class="form-group row" id="re_pwdDiv">

								<div class="col-sm-7">
									<label for="inputPassword_re">비밀번호 확인</label> <input
										type="password" name="reuserPwd" class="form-control"
										id="inputPassword_re" placeholder="비밀번호를 입력해주세요" required>
									<div id="repwdMsg" class="msg"></div>
								</div>


							</div>

							<div class="form-group row" id="joinInDiv">
								<div class="col-sm-12">
									<button type="submit" class="btn btn-primary btn-lg btn-block"
										id="joinInBtn">회 원 가 입</button>
								</div>
							</div>
						</form>

					</div>

				</div>
			</div>


		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>