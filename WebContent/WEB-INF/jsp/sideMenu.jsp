<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#sidebar-container {
    min-height: 100vh;   
    background-color: #333;
    padding: 0;
}

/* Sidebar sizes when expanded and expanded */
.sidebar-expanded {
    width: 230px;
}
.sidebar-collapsed {
    width: 60px;
}

/* Menu item*/
#sidebar-container .list-group a {
    height: 50px;
    color: white;
}

/* Submenu item*/
#sidebar-container .list-group .sidebar-submenu a {
    height: 45px;
    padding-left: 30px;
}
.sidebar-submenu {
    font-size: 0.9rem;
}

/* Separators */
.sidebar-separator-title {
    background-color: #333;
    height: 35px;
}
.sidebar-separator {
    background-color: #333;
    height: 25px;
}
.logo-separator {
    background-color: #333;    
    height: 60px;
}

/* Closed submenu icon */
#sidebar-container .list-group .list-group-item[aria-expanded="false"] .submenu-icon::after {
  content: " \f0d7";
  font-family: FontAwesome;
  display: inline;
  text-align: right;
  padding-left: 10px;
}
/* Opened submenu icon */
#sidebar-container .list-group .list-group-item[aria-expanded="true"] .submenu-icon::after {
  content: " \f0da";
  font-family: FontAwesome;
  display: inline;
  text-align: right;
  padding-left: 10px;
}

</style>
</head>
<body>
	<!-- Sidebar-container -->
	<div id="sidebar-container" class="sidebar-expanded d-none d-md-block">
		<!-- d-* hiddens the Sidebar in smaller devices. Its itens can be kept on the Navbar 'Menu' -->
		<!-- Bootstrap List Group -->
		<ul class="list-group">
			<!-- Separator with title -->
			<li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
				<small>내 계정 관리</small>
			</li>
			<!-- /END Separator -->
			<!-- Menu with submenu -->
			<a href="#submenu1" data-toggle="collapse" aria-expanded="false"
				class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
				<div class="d-flex w-100 justify-content-start align-items-center text-white">
					<span class="fa fa-user fa-fw mr-3"></span>
					<span class="menu-collapsed">Profile</span> 
					<span class="fas fa-caret-down fa-fw ml-auto "></span>
				</div>
			</a>
			<!-- Submenu1 content -->
			<div id='submenu1' class="collapse sidebar-submenu">
				<a href="#" class="list-group-item list-group-item-action bg-dark text-white">
					<span class="fas fa-cog fa-fw mr-3"></span> 
					<span class="menu-collapsed mr-auto" aria-hidden="true">Settings</span>
				</a> 
				<a href="#" class="list-group-item list-group-item-action bg-dark text-white">
					<span class="fas fa-key fa-fw mr-3"></span>
					<span class="menu-collapsed">Password</span>
				</a>
			</div><!-- Submenu1 content END -->
			<a href="#" class="bg-dark list-group-item list-group-item-action">
				<div class="d-flex w-100 justify-content-start align-items-center">
					<span class="fa fa-envelope fa-fw mr-3"></span> 
					<span class="menu-collapsed">
						Messages<span class="badge badge-pill badge-primary ml-2">5</span>
					</span>
				</div>
			</a>
			<!-- Separator with title -->
			<li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
				<small>내 멤버십 관리</small>
			</li>
			<!-- /END Separator -->
			<a href="#submenu2" data-toggle="collapse" aria-expanded="false"
				class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
				<div class="d-flex w-100 justify-content-start align-items-center text-white">
					<span class="fas fa-chart-bar fa-fw mr-3"></span> 
					<span class="menu-collapsed">Service</span> 
					<span class="fas fa-caret-down fa-fw ml-auto "></span>
				</div>
			</a>
			<!-- Submenu2 content -->
			<div id='submenu2' class="collapse sidebar-submenu">
				<a href="#" class="list-group-item list-group-item-action bg-dark text-white">
					<span class="fas fa-cog fa-fw mr-3"></span> 
					<span class="menu-collapsed mr-auto" aria-hidden="true">Settings</span>
				</a> 
			</div><!-- Submenu1 content END -->
			<a href="#" class="bg-dark list-group-item list-group-item-action">
				<div class="d-flex w-100 justify-content-start align-items-center">
					<span class="fa fa-question fa-fw mr-3"></span> 
					<span class="menu-collapsed">
						<svg-icon><src href="sprite.svg#si-glyph-customer-support" /></svg-icon>Help
					</span>
				</div>
			</a>
		</ul>
		<!-- List Group END-->
	</div>
	<!-- Sidebar-container END -->
	
	<script type="text/javascript">
	// Hide submenus
	$('#body-row .collapse').collapse('hide'); 

	// Collapse/Expand icon
	$('#collapse-icon').addClass('fa-angle-double-left'); 

	// Collapse click
	$('[data-toggle=sidebar-colapse]').click(function() {
	    SidebarCollapse();
	});

	function SidebarCollapse () {
	    $('.menu-collapsed').toggleClass('d-none');
	    $('.sidebar-submenu').toggleClass('d-none');
	    $('.submenu-icon').toggleClass('d-none');
	    $('#sidebar-container').toggleClass('sidebar-expanded sidebar-collapsed');
	    
	    // Treating d-flex/d-none on separators with title
	    var SeparatorTitle = $('.sidebar-separator-title');
	    if ( SeparatorTitle.hasClass('d-flex') ) {
	        SeparatorTitle.removeClass('d-flex');
	    } else {
	        SeparatorTitle.addClass('d-flex');
	    }
	    
	    // Collapse/Expand icon
	    $('#collapse-icon').toggleClass('fa-angle-double-left fa-angle-double-right');
	}
	</script>	
</body>
</html>