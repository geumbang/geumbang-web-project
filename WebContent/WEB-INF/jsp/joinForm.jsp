<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Keumbang.com</title>
<link rel="stylesheet" href="css/reset.css">
<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link type="text/css" href="css/theme.css" rel="stylesheet">
<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/member.js"></script>
<script src="scripts/sha256.js" type="text/javascript"></script>
<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var emailCheck = false;

							$('#inputEmail')
									.on(
											'blur',
											function() {
												var EmailVar = $(this).val();
												var params = "email="
														+ EmailVar;

												var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
												var emailVar = $('#inputEmail')
														.val();
												if (!filter.test(emailVar)) {
													$('#inputEmail')
															.removeClass(
																	'is-valid')
															.addClass(
																	'is-invalid');
													$('#emailMsg')
															.removeClass(
																	'valid-feedback')
															.addClass(
					   												'invalid-feedback');
													$("#emailMsg")
															.html(
																	'올바른 이메일 형식이 아닙니다.');

												} else {
													$
															.ajax({
																url : 'isExistMember.do',
																data : params,
																type : 'POST',
																dataType : 'json',
																success : function(
																		data) {
																	if (data == 0) {
																		$(
																				'#inputEmail')
																				.removeClass(
																						'is-invalid')
																				.addClass(
																						'is-valid');
																		$(
																				'#emailMsg')
																				.removeClass(
																						'invalid-feedback')
																				.addClass(
																						'valid-feedback');
																		$(
																				"#emailMsg")
																				.html(
																						'사용하실 수 있는 이메일입니다.');

																		emailCheck = true;

																	} else {
																		$(
																				'#inputEmail')
																				.removeClass(
																						'is-valid')
																				.addClass(
																						'is-invalid');
																		$(
																				'#emailMsg')
																				.removeClass(
																						'valid-feedback')
																				.addClass(
																						'invalid-feedback');
																		$(
																				"#emailMsg")
																				.html(
																						'이미 등록된 이메일입니다.');
																		emailCheck = false;
																	}
																}
															});
												}
											});

							$('#joinInBtn').on('click', function() {

								return joinCheck();
							});

							function joinCheck() {

								if (document.frm.joinAccept.checked == false) {
									alert('개인정보의 수집ㆍ이용 동의에 체크해주세요.');

									return false;
								}

								if (document.frm.userEmail.value.length == 0) {
									$('#inputEmail').removeClass('is-valid')
											.addClass('is-invalid');
									$('#emailMsg')
											.removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#emailMsg").html('이메일을 입력해주세요.');
									return false;

								}

								var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
								var emailVar = $('#inputEmail').val();
								if (!filter.test(emailVar)) {
									$('#inputEmail').removeClass('is-valid')
											.addClass('is-invalid');
									$('#emailMsg')
											.removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#emailMsg").html('올바른 이메일 형식이 아닙니다.');
									return false;
								}

								if (!emailCheck) {
									$('#inputEmail').removeClass('is-valid')
											.addClass('is-invalid');
									$('#emailMsg')
											.removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#emailMsg").html('이미 등록된 이메일입니다.');

									return false;
								}

								var regNm = /^[가-힣]{2,15}|[a-zA-Z]{2,15}\s[a-zA-Z]{2,15}$/; // 이름 유효성 검사식
								var nameVar = $('#inputName').val();

								if (document.frm.userName.value.length == 0) {

									$('#inputName').removeClass('is-valid')
											.addClass('is-invalid');
									$('#nameMsg').removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#nameMsg").html('이름을 입력해주세요.');
									return false;
								}

								if (!regNm.test(nameVar)) {

									$('#inputName').removeClass('is-valid')
											.addClass('is-invalid');
									$('#nameMsg').removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#nameMsg").html('한글,영문 대소문자만 사용 가능합니다.');
									return false;
								}

								else {

									$('#inputName').removeClass('is-invalid')
											.addClass('is-valid');
									$('#nameMsg').removeClass(
											'invalid-feedback').addClass(
											'valid-feedback');
									$("#nameMsg").html('사용 가능한 이름입니다.');

								}

								if (document.frm.userPhone.value.length == 0) {
									$('#inputPhone').removeClass('is-valid')
											.addClass('is-invalid');
									$('#phoneMsg')
											.removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#phoneMsg").html('연락처를 입력해주세요.');
									return false;
								}

								else {

									$('#inputPhone').removeClass('is-invalid')
											.addClass('is-valid');
									$('#phoneMsg').removeClass(
											'invalid-feedback').addClass(
											'valid-feedback');
									$("#phoneMsg").html('올바른 연락처입니다');

								}

								if (document.frm.userPwd.value == "") {

									$('#inputPassword').removeClass('is-valid')
											.addClass('is-invalid');
									$('#pwdMsg').removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#pwdMsg").html('비밀번호를 입력해주세요');
									return false;
								}

								var regex = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
								var pwdVal = $('#inputPassword').val();

								if (!regex.test(pwdVal)) {
									$('#inputPassword').removeClass('is-valid')
											.addClass('is-invalid');
									$('#pwdMsg').removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#pwdMsg")
											.html(
													'비밀번호는 숫자와 영문자 조합으로 6~12자리를 사용해야 합니다.');

									return false;
								}

								else {

									$('#inputPassword').removeClass(
											'is-invalid').addClass('is-valid');
									$('#pwdMsg')
											.removeClass('invalid-feedback')
											.addClass('valid-feedback');
									$("#pwdMsg").html('올바른 비밀번호 입니다.');

								}

								if (document.frm.userPwd.value != document.frm.reuserPwd.value) {
									$('#inputPassword_re').removeClass('is-valid')
											.addClass('is-invalid');
									$('#repwdMsg').removeClass('valid-feedback')
											.addClass('invalid-feedback');
									$("#repwdMsg")
											.html(
													'비밀번호가 일치하지 않습니다.');

									return false;
								}
							}

						});
	</script>
<style>
#joinFormDiv {
	margin-top: 20px;
}

#container {
	width: 900px;
	margin: 100px auto;
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
	margin-top: 50px;
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

#joinTitle{
text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrapper">
		<div class="container">

			<div class="wrapper-join">


				<div class="row" id="container">


		<div class="text-center" id="joinTitle">
			<h1>회 원 가 입</h1>
			
		</div>


		<div id="joinFormDiv" class="col-12">
			<form action="joinMember.do" method="post" name="frm">
				<div class="col-12 border">
					<div id="personal">
						<span> 제15조(개인정보의 수집ㆍ이용) ① 개인정보처리자는 다음 각 호의 어느 하나에 해당하는
							경우에는 개인정보를 수집할 수 있으며 그 수집 목적의 범위에서 이용할 수 있다. 1. 정보주체의 동의를 받은 경우
							2. 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우 3. 공공기관이 법령 등에서 정하는
							소관 업무의 수행을 위하여 불가피한 경우 4. 정보주체와의 계약의 체결 및 이행을 위하여 불가피하게 필요한 경우 5.
							정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태에 있거나 주소불명 등으로 사전 동의를 받을 수 없는
							경우로서 명백히 정보주체 또는 제3자의 급박한 생명, 신체, 재산의 이익을 위하여 필요하다고 인정되는 경우 6.
							개인정보처리자의 정당한 이익을 달성하기 위하여 필요한 경우로서 명백하게 정보주체의 권리보다 우선하는 경우. 이 경우
							개인정보처리자의 정당한 이익과 상당한 관련이 있고 합리적인 범위를 초과하지 아니하는 경우에 한한다. ②
							개인정보처리자는 제1항제1호에 따른 동의를 받을 때에는 다음 각 호의 사항을 정보주체에게 알려야 한다. 다음 각 호의
							어느 하나의 사항을 변경하는 경우에도 이를 알리고 동의를 받아야 한다.1. 개인정보의 수집·이용 목적 '금방'회사의
							서비스 제공을 목적 2. 수집하려는 개인정보의 항목 휴대전화번호,이름,사업자등록사본,ID 3. 개인정보의 보유 및
							이용 기간 회원 탈퇴 시까지 보유 4. 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익이 있는 경우에는
							그 불이익의 내용 </span>
					</div>
					<hr>
					<div class="form-group row">

						<div class="col-sm-10">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck1"
									name="joinAccept" value="1"> <label
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
						<div id="emailMsg"></div>
					</div>
				</div>


				<div class="form-group row" id="nameDiv">
					<div class="col-sm-7">
						<label for="inputName">이름</label> <input type="text"
							name="userName" class="form-control" id="inputName"
							placeholder="이름을 입력해주세요" required>
						<div id="nameMsg"></div>
					</div>


				</div>





				<div class="form-group row" id="phoneDiv">
					<div class="col-sm-7">
						<label for="inputPhone">연락처</label> <input type="text"
							name="userPhone" class="form-control" id="inputPhone"
							placeholder="연락처를 입력해주세요" required>
						<div id="phoneMsg"></div>
					</div>


				</div>


				<div class="form-group row" id="pwdDiv">

					<div class="col-sm-7">
						<label for="inputPassword">비밀번호</label> <input type="password"
							name="userPwd" class="form-control" id="inputPassword"
							placeholder="비밀번호를 입력해주세요" required>
						<div id="pwdMsg"></div>
					</div>


				</div>

				<div class="form-group row" id="re_pwdDiv">

					<div class="col-sm-7">
						<label for="inputPassword_re">비밀번호 확인</label> <input
							type="password" name="reuserPwd" class="form-control"
							id="inputPassword_re" placeholder="비밀번호를 입력해주세요" required>
						<div id="repwdMsg"></div>
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

	<div class="footer">
		<div class="container">
			<b class="copyright">&copy; 2018 Keumbang.com </b>All rights reserved.
		</div>
	</div>
</body>
</html>