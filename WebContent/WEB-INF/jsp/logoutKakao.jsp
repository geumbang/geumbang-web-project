<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
Kakao.init('4a1b09291960587e98224d92f79026b1');
Kakao.Auth.logout();
window.location.href = 'logoutKakaoSession.do';
</script>
</body>
</html>