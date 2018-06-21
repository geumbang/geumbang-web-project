$(document)
		.ready(
				function() {

					var emailCheck = false;

					$('#inputEmail')
							.on(
									'blur',
									function() {

										var EmailVar = $(this).val();

										var params = "email=" + EmailVar;
										var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
										var emailVar = $('#inputEmail').val();

										if (!filter.test(emailVar)) {
											$('#inputEmail').removeClass(
													'is-valid').addClass(
													'is-invalid');
											$('#emailMsg').removeClass(
													'valid-feedback').addClass(
													'invalid-feedback');
											$("#emailMsg").html(
													'올바른 이메일 형식이 아닙니다.');
										}

										else {
											$
													.ajax({
														url : 'isExistMember.do',
														data : params,
														type : 'POST',
														dataType : 'json',
														success : function(data) {
															if (data == 0) {
																$('#inputEmail')
																		.removeClass(
																				'is-invalid')
																		.addClass(
																				'is-valid');
																$('#emailMsg')
																		.removeClass(
																				'invalid-feedback')
																		.addClass(
																				'valid-feedback');
																$("#emailMsg")
																		.html(
																				'사용하실 수 있는 이메일입니다.');

																emailCheck = true;

															} else {
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
							$('#inputEmail').removeClass('is-valid').addClass(
									'is-invalid');
							$('#emailMsg').removeClass('valid-feedback')
									.addClass('invalid-feedback');
							$("#emailMsg").html('이메일을 입력해주세요.');
							return false;

						}

						var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
						var emailVar = $('#inputEmail').val();
						if (!filter.test(emailVar)) {
							$('#inputEmail').removeClass('is-valid').addClass(
									'is-invalid');
							$('#emailMsg').removeClass('valid-feedback')
									.addClass('invalid-feedback');
							$("#emailMsg").html('올바른 이메일 형식이 아닙니다.');
							return false;
						}

						if (!emailCheck) {
							$('#inputEmail').removeClass('is-valid').addClass(
									'is-invalid');
							$('#emailMsg').removeClass('valid-feedback')
									.addClass('invalid-feedback');
							$("#emailMsg").html('이미 등록된 이메일입니다.');

							return false;
						}

						var regNm = /^[가-힣]{2,15}|[a-zA-Z]{2,15}\s[a-zA-Z]{2,15}$/; // 이름
						// 유효성
						// 검사식
						var nameVar = $('#inputName').val();

						if (document.frm.userName.value.length == 0) {

							$('#inputName').removeClass('is-valid').addClass(
									'is-invalid');
							$('#nameMsg').removeClass('valid-feedback')
									.addClass('invalid-feedback');
							$("#nameMsg").html('이름을 입력해주세요.');
							return false;
						}

						if (!regNm.test(nameVar)) {

							$('#inputName').removeClass('is-valid').addClass(
									'is-invalid');
							$('#nameMsg').removeClass('valid-feedback')
									.addClass('invalid-feedback');
							$("#nameMsg").html('한글,영문 대소문자만 사용 가능합니다.');
							return false;
						}

						else {

							$('#inputName').removeClass('is-invalid').addClass(
									'is-valid');
							$('#nameMsg').removeClass('invalid-feedback')
									.addClass('valid-feedback');
							$("#nameMsg").html('사용 가능한 이름입니다.');

						}

						if (document.frm.userPhone.value.length == 0) {
							$('#inputPhone').removeClass('is-valid').addClass(
									'is-invalid');
							$('#phoneMsg').removeClass('valid-feedback')
									.addClass('invalid-feedback');
							$("#phoneMsg").html('연락처를 입력해주세요.');
							return false;
						}

						else {

							$('#inputPhone').removeClass('is-invalid')
									.addClass('is-valid');
							$('#phoneMsg').removeClass('invalid-feedback')
									.addClass('valid-feedback');
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
							$("#pwdMsg").html(
									'비밀번호는 숫자와 영문자 조합으로 6~12자리를 사용해야 합니다.');

							return false;
						}

						else {

							$('#inputPassword').removeClass('is-invalid')
									.addClass('is-valid');
							$('#pwdMsg').removeClass('invalid-feedback')
									.addClass('valid-feedback');
							$("#pwdMsg").html('올바른 비밀번호 입니다.');

						}

						if (document.frm.userPwd.value != document.frm.reuserPwd.value) {
							$('#inputPassword_re').removeClass('is-valid')
									.addClass('is-invalid');
							$('#repwdMsg').removeClass('valid-feedback')
									.addClass('invalid-feedback');
							$("#repwdMsg").html('비밀번호가 일치하지 않습니다.');

							return false;
						}
						$('#inputPassword').val(SHA256($('#inputPassword').val()));
					}

				});