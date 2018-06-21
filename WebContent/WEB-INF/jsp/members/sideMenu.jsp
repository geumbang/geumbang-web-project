<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* html { */
/*   font-size: 16px; */
/* } */
/* @media screen and (min-width: 320px) { */
/*   html { */
/*     font-size: calc(16px + 6 * ((100vw - 320px) / 680)); */
/*   } */
/* } */
/* @media screen and (min-width: 1000px) { */
/*   html { */
/*     font-size: 22px; */
/*   } */
/* } */
/* Menu item*/
.sidebar-nav>.sidebar-brand a{ color: white;}
.list-group a {
    height: 50px;
    color: white;
}
/* Submenu item*/
.list-group .sidebar-submenu a { 
    height: 45px;
    padding-left: 30px;
    color: red;
}
.sidebar-submenu {
    font-size: 0.9rem;
}

/* Separators */
.sidebar-separator-title {
    background-color: #333;
    color:rgba(255,255,255,.75);
    height: 35px;
    padding-left:0;
}
</style>
</head>
<body>
			<ul class="sidebar-nav list-group">
                <li class="sidebar-brand d-flex align-items-center">
                    <a href="myPage.do">마이페이지</a>
                </li>
				<li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
					<small>내 계정 관리</small>
				</li>
                <a href="#submenu-profile" data-toggle="collapse" aria-expanded="false"
					class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
					<div class="d-flex w-100 justify-content-start align-items-center text-white">
						<span class="fa fa-user fa-fw mr-3"></span>
						<span class="menu-collapsed">Profile</span> 
						<span class="fas fa-caret-down fa-fw ml-auto "></span>
					</div>
				</a>
				<!-- Submenu1 content -->
				<div id='submenu-profile' class="collapse sidebar-submenu">
					<a id='submenu-profile-setting-anchor' href="profile.do" class="list-group-item list-group-item-action bg-dark text-white">
						<span class="fas fa-cog fa-fw mr-3"></span> 
						<span class="menu-collapsed" aria-hidden="true">Settings</span>
					</a> 
<!-- 					<a id="submenu-profile-password-anchor" href="#" class="list-group-item list-group-item-action bg-dark text-white"> -->
<!-- 						<span class="fas fa-key fa-fw mr-3"></span> -->
<!-- 						<span class="menu-collapsed">Password</span> -->
<!-- 					</a> -->
				</div><!-- Submenu1 content END -->
<!--                 <a href="#" class="bg-dark list-group-item list-group-item-action"> -->
<!-- 					<div class="d-flex w-100 justify-content-start align-items-center"> -->
<!-- 						<span class="fa fa-envelope fa-fw mr-3"></span>  -->
<!-- 						<span class="menu-collapsed">Messages -->
<!-- 							<span class="badge badge-pill badge-primary ml-2">5</span> -->
<!-- 						</span> -->
<!-- 					</div> -->
<!-- 				</a> -->
				
				
				<!-- Separator with title -->
<!-- 				<li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed"> -->
<!-- 					<small>내 멤버십 관리</small> -->
<!-- 				</li> -->
<!--                 <a href="#submenu-service" data-toggle="collapse" aria-expanded="false" -->
<!-- 					class="bg-dark list-group-item list-group-item-action flex-column align-items-start"> -->
<!-- 					<div class="d-flex w-100 justify-content-start align-items-center text-white"> -->
<!-- 						<span class="fas fa-chart-bar fa-fw mr-3"></span>  -->
<!-- 						<span class="menu-collapsed">Service</span>  -->
<!-- 						<span class="fas fa-caret-down fa-fw ml-auto "></span> -->
<!-- 					</div> -->
<!-- 				</a> -->
				<!-- Submenu2 content -->
<!-- 				<div id='submenu-service' class="collapse sidebar-submenu"> -->
<!-- 					<a  id="submenu-service-settings-anchor" href="#" class="list-group-item list-group-item-action bg-dark text-white"> -->
<!-- 						<span class="fas fa-cog fa-fw mr-3"></span>  -->
<!-- 						<span class="menu-collapsed mr-auto" aria-hidden="true">Settings</span> -->
<!-- 					</a>  -->
<!-- 				</div>Submenu2 content END -->
<!-- 				<a href="#" class="bg-dark list-group-item list-group-item-action"> -->
<!-- 					<div class="d-flex w-100 justify-content-start align-items-center"> -->
<!-- 						<span class="fa fa-question fa-fw mr-3"></span>  -->
<!-- 						<span class="menu-collapsed"> -->
<!-- 							<svg-icon><src href="sprite.svg#si-glyph-customer-support" /></svg-icon>Help -->
<!-- 						</span> -->
<!-- 					</div> -->
<!-- 				</a> -->
            </ul>
	<!-- Sidebar-container END -->
	
	
	
	<script type="text/javascript">
		<!-- myPage. profile. settings 접근 금지 -->
		$('#submenu-profile-setting-anchor').click(function( event ) {
			if('${loginUser.oauthType}' != 0){
				event.preventDefault();
				alert('죄송합니다, 회원님은 연동 서비스를 이용중이십니다. 개인정보 수정은 본사 문의부탁드립니다.');
			}
		});
	</script>
</body>
</html>