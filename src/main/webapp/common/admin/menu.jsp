<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org /TR/html4/loose.dtd">
<!--sidebar start-->
<aside>
	<div id="sidebar" class="nav-collapse">
		<!-- sidebar menu start-->
		<div class="leftside-navigation">
			<ul class="sidebar-menu" id="nav-accordion">
				<li><a href="index.html"> <i class="fa fa-dashboard"></i> <span>Dashboard</span>
				</a></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-book"></i> <span>Quản lý bài viết</span>
				</a>
					<ul class="sub">
						<c:url var="listURL" value="/admin-new">
						<c:param name="type" value="list"></c:param>
						<c:param name="page" value="1"></c:param>
						<c:param name="maxPageItem" value="2"></c:param>
						<c:param name="sortName" value="title"></c:param>
						<c:param name="sortBy" value="desc"></c:param>
						</c:url>
						<li><a href="${listURL}"><i class="fa fa-th"></i>Danh sách bài viết</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-book"></i> <span>UI Elements</span>
				</a>
					<ul class="sub">
						<li><a href="typography.html">Typography</a></li>
						<li><a href="glyphicon.html">glyphicon</a></li>
						<li><a href="grids.html">Grids</a></li>
					</ul></li>
				<li><a href="fontawesome.html"> <i class="fa fa-bullhorn"></i>
						<span>Font awesome </span>
				</a></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-th"></i> <span>Data Tables</span>
				</a>
					<ul class="sub">
						<li><a href="basic_table.html">Basic Table</a></li>
						<li><a href="responsive_table.html">Responsive Table</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-tasks"></i> <span>Form Components</span>
				</a>
					<ul class="sub">
						<li><a href="form_component.html">Form Elements</a></li>
						<li><a href="form_validation.html">Form Validation</a></li>
						<li><a href="dropzone.html">Dropzone</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-envelope"></i> <span>Mail </span>
				</a>
					<ul class="sub">
						<li><a href="mail.html">Inbox</a></li>
						<li><a href="mail_compose.html">Compose Mail</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class=" fa fa-bar-chart-o"></i> <span>Charts</span>
				</a>
					<ul class="sub">
						<li><a href="chartjs.html">Chart js</a></li>
						<li><a href="flot_chart.html">Flot Charts</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class=" fa fa-bar-chart-o"></i> <span>Maps</span>
				</a>
					<ul class="sub">
						<li><a href="google_map.html">Google Map</a></li>
						<li><a href="vector_map.html">Vector Map</a></li>
					</ul></li>
				<li class="sub-menu"><a class="active" href="javascript:;">
						<i class="fa fa-glass"></i> <span>Extra</span>
				</a>
					<ul class="sub">
						<li><a class="active" href="gallery.html">Gallery</a></li>
						<li><a href="404.html">404 Error</a></li>
						<li><a href="registration.html">Registration</a></li>
					</ul></li>
				<li><a href="login.html"> <i class="fa fa-user"></i> <span>Login
							Page</span>
				</a></li>
			</ul>
		</div>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->