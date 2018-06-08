<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="images/goldImg.png" type="image/png">
<title>Keumbang.com</title>
<style type="text/css">
#body-row {
    margin-left:0;
    margin-right:0;
}
.breadcrumb {background: transparent !important; width:100% !important; display: block; }
.breadcrumb li {font-size: 14px;}
.breadcrumb a {color: rgba(66, 139, 202, 1);}
.breadcrumb a:hover {color: rgba(42, 100, 150, 1);}
.breadcrumb>.active {color: rgba(153, 153, 153, 1);}
.breadcrumb>li+li:before {color: rgba(204, 204, 204, 1); content: "\276F\00a0";}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="wrapper">
		<!-- Bootstrap row -->
		<div class="row" id="body-row">
			<div id="mypage-sidebar" class="col-sm px-0">
				<jsp:include page="sideMenu.jsp"></jsp:include>
			</div>
			<div id="mypage-contents" class="pull-left container-fluid col-sm-10 px-0 bg-secondary">
				<!-- bread-crumb navigation -->
					<nav aria-label="breadcrumb " >
						<ol class="breadcrumb my-0">
					    	<small><li class=""><a href="#">Home</a></li></small>
					    	<small><li class=""><span class="fas fa-caret-right fa-fw"></span></li></small>
					    	<small><li class=""><a href="#">Travel</a></li></small>
					    	<small><li class=""><span class="fas fa-caret-right fa-fw"></span></li></small>
					    	<small><li class="active"><a href="#">Destination</a></li></small>
					  	</ol>
					</nav>
				<!-- bred-crumb navigation END -->
				<div id="mypage-profile" class="col-auto bg-dark my-auto">
					<div id="mypage-profile-title">
						<h1 class="">회원정보 조회</h1> 
						<p class="lead">이곳에서 ${loginUser.userName }님의 회원정보를 열람하실 수 있습니다.</p>
						<hr class="my-4">
					</div>
					<table id="profile-view" class="table table-responsive">
						<tbody>
							<tr>
								<th scope="row">계정/E-mail.</th>
								<th>${loginUser.userEmail }</th>
							</tr>
							<tr>
								<th scrope="row">이름.</th>
								<th>${loginUser.userName }</th>
							</tr>
							<tr>
								<th scrope="row">연락처.</th>
								<th>${loginUser.userPhone }</th>
							</tr>
							<tr>
								<th scrope="row">가입일자.</th>
								<th>${loginUser.joinDate }</th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>