<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org /TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><dec:title default="Admin" /></title>
<!-- bootstrap-css -->
<link rel="stylesheet" href="<c:url value='/template/admin/css/bootstrap.min.css'/>">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="<c:url value='/template/admin/css/style.css'/>" rel='stylesheet' type='text/css' />
<link href="<c:url value='/template/admin/css/style-responsive.css'/>" rel="stylesheet" />
<link rel="stylesheet" href="<c:url value='/template/admin/css/lightbox.css'/>">
<!-- font CSS -->
<link
    href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
    rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="<c:url value='/template/admin/css/font.css'/>" type="text/css" />
<link href="<c:url value='/template/admin/css/font-awesome.css'/>" rel="stylesheet">
<!-- //font-awesome icons -->

</head>
<body>
	<section id="container">
		<!-- header --> 
		<%@include file="/common/admin/header.jsp"%> 
		<!-- header -->
		
		<!-- menu --> 
		<%@include file="/common/admin/menu.jsp"%> 
		<!-- menu -->
		
		<!--main content start--> 
		<section id="main-content"> 
			<section class="wrapper"> 
				<dec:body /> 
			</section> 
		
			<!-- footer -->
			<%@include file="/common/admin/footer.jsp" %>
			<!-- / footer --> 
		</section> 
		<!--main content end--> 
	</section>
	<script
        type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="<c:url value='/template/admin/js/jquery2.0.3.min.js'/>"></script>
    <script src="<c:url value='/template/admin/js/bootstrap.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.dcjqaccordion.2.7.js'/>"></script>
    <script src="<c:url value='/template/admin/js/scripts.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.slimscroll.js'/>"></script>
    <script src="<c:url value='/template/admin/js/jquery.nicescroll.js'/>"></script>
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="<c:url value='/template/admin/js/flot-chart/excanvas.min.js'/>"></script><![endif]-->
    <script src="<c:url value='/template/admin/js/jquery.scrollTo.js'/>"></script>
</body>
</html>