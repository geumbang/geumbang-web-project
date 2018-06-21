<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="shortcut icon" href="images/goldImg.png" type="image/png">
	<!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

<title>Keumbang.com</title>
<style type="text/css">
#sidebar-wrapper{background:#333;}
#sidebar-wrapper .sticky-top{postion: relative;}
#mypage-overview-header {margin-bottom: 10px}  
.jumbotron{padding-bottom: 0px}

.th-lg {min-width: 40%; text-align: left;}
.card{width: 100%; }
/* .card-header{font-size: 4vw; height: auto; } */
.card-body{background: #e9ecef;}
.card-body>.table {width: 100%}
<!--breadcrumb CSS -->
.breadcrumb {background: transparent !important; width:100% !important; display: inline; }
.breadcrumb li {font-size: 14px;}
.breadcrumb a {color: rgba(66, 139, 202, 1);}
.breadcrumb a:hover {color: rgba(42, 100, 150, 1);}
.breadcrumb>.active {color: rgba(153, 153, 153, 1);}
.breadcrumb>li+li:before {color: rgba(204, 204, 204, 1); content: "\276F\00a0";}
#menu-toggle a{
	padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
    cursor:pointer;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	 <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper" class="">
            <jsp:include page="sideMenu.jsp"></jsp:include>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
            	<div id="mypage-header">
                	<span><a style="color: #333; text-decoration: none;font-size:30px;cursor:pointer;" id="sidemenu-toggle">&#9776;</a></span>
                		<script type="text/javascript">
	                		$("#sidemenu-toggle").click(function(e) {
	                	        e.preventDefault();
	                	        $("#wrapper").toggleClass("toggled");
	                	    }); 
	                		// sidemenu-toggle END
						</script>
<!-- 					<span> -->
<!-- 		            	bread-crumb navigation -->
<!-- 						<nav aria-label="breadcrumb d-inline" > -->
<!-- 							<ol class="breadcrumb my-0"> -->
<!-- 						    	<small><li class=""><a href="#">마이페이지</a></li></small> -->
<!-- 						    	<small><li class=""><span class="fas fa-caret-right fa-fw"></span></li></small> -->
<!-- 						    	<small><li class="active"><a href="#">프로필</a></li></small> -->
<!-- 						  	</ol> -->
<!-- 						</nav>bred-crumb navigation END -->
<!-- 					</span> -->
            	</div>
            	<div id="mypage-body">
	            	<div class="jumbotron my-0 py-3">
	            		<div id="mypage-overview-header">
							<h1><b>${loginUser.userName }</b>님 안녕하세요!</h1>
							<hr class="my-4">
							<p>이 곳은 ${loginUser.userName} 고객님의 프로필과 이용하고 계신 서비스 정보를 제공하고 있습니다.</p>
	            		</div>
						<div id="mypage-overview" class="row justify-content-md-center">
							<div id="mypage-overview-profile" class="card border-light">
								<div class="card-header" >#Profile</div>
								<div class="card-body" align="center">
									<table id="overview-profile-table" class="panel-body table table-reactive-sm">
										<tbody>
											<tr>
												<th class="th-lg">계정</th>
												<td>${loginUser.userEmail }</td>
											</tr>
											<tr>
												<th class="th-lg">이름</th>
												<td>${loginUser.userName }</td>
											</tr>
											<tr>
												<th class="th-lg">휴대전화</th>
												<td>${loginUser.userPhone }</td>
											</tr>
											<tr>
												<th class="th-lg">가입일자</th>
												<td>${loginUser.joinDate }</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
<!-- 							<div class="w-100 my-auto"></div> -->
<!-- 							<div id="mypage-overview-service" class="card border-light"> -->
<!-- 								<div class="card-header">#Service</div> -->
<!-- 								<div class="card-body" align="center"> -->
<!-- 									<table id="overview-service-table" class="panel-body table table-reactive-sm"> -->
<!-- 										<tbody> -->
<!-- 											<tr> -->
<!-- 												<th class="th-lg">서비스명</th> -->
<!-- 												<td></td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<th class="th-lg">서비스 이용기한</th> -->
<%-- 												<td>${loginUser.joinDate } ~ +30일</td> --%>
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<th class="th-lg">다음 갱신일자</th> -->
<!-- 												<td></td> -->
<!-- 											</tr> -->
<!-- 											<tr> -->
<!-- 												<th class="th-lg">자동 서비스갱신 등록</th> -->
<!-- 												<td>NO</td> -->
<!-- 											</tr> -->
<!-- 										</tbody> -->
<!-- 									</table> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>
            	</div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->
    
    
    <script type="text/javascript">
    $(function(){
    	var returnMessage = "${returnMessage}";
    	if(returnMessage != "")
    		alert(returnMessage);
    });
    
    </script>
</body>

</html>
