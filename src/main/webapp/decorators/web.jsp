<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org /TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description"
	content="Magz is a HTML5 & CSS3 magazine template is based on Bootstrap 3." />
<meta name="author" content="Kodinger" />
<meta name="keyword"
	content="magz, html5, css3, template, magazine template" />
<!-- Shareable -->
<meta property="og:title"
	content="HTML5 & CSS3 magazine template is based on Bootstrap 3" />
<meta property="og:type" content="article" />
<meta property="og:url" content="http://github.com/nauvalazhar/Magz" />
<meta property="og:image"
	content="https://raw.githubusercontent.com/nauvalazhar/Magz/master/images/preview.png" />
<title>Magz &mdash; Responsive HTML5 &amp; CSS3 Magazine
	Template</title>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/bootstrap/bootstrap.min.css'/>" />
<!-- IonIcons -->
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/ionicons/css/ionicons.min.css'/>" />
<!-- Toast -->
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/toast/jquery.toast.min.css'/>" />
<!-- OwlCarousel -->
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/owlcarousel/dist/assets/owl.carousel.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/owlcarousel/dist/assets/owl.theme.default.min.css'/>" />
<!-- Magnific Popup -->
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/magnific-popup/dist/magnific-popup.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/template/web/scripts/sweetalert/dist/sweetalert.css'/>" />
<!-- Custom style -->
<link rel="stylesheet"
	href="<c:url value='/template/web/css/style.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/skins/all.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/template/web/css/demo.css'/>" />
<title><dec:title default="Trang chủ" /></title>
</head>
<body>
	<!-- header -->
	<%@include file="/common/web/header.jsp"%>
	<!-- header -->

	<!--body-->
	<dec:body />
	<!--body-->

	<!-- best of the week -->
	<%@include file="/common/web/bestofweek.jsp"%>
	<!-- best of the week -->

	<!-- footer -->
	<%@include file="/common/web/footer.jsp"%>
	<!-- footer -->

	<!-- JS -->
	<script src="<c:url value='/template/webjs/jquery.js'/>"></script>
	<script src="<c:url value='/template/webjs/jquery.migrate.js'/>"></script>
	<script
		src="<c:url value='/template/webscripts/bootstrap/bootstrap.min.js'/>"></script>
	<script>
		var $target_end = $(".best-of-the-week");
	</script>
	<script
		src="<c:url value='/template/webscripts/jquery-number/jquery.number.min.js'/>"></script>
	<script
		src="<c:url value='/template/webscripts/owlcarousel/dist/owl.carousel.min.js'/>"></script>
	<script
		src="<c:url value='/template/webscripts/magnific-popup/dist/jquery.magnific-popup.min.js'/>"></script>
	<script
		src="<c:url value='/template/webscripts/easescroll/jquery.easeScroll.js'/>"></script>
	<script
		src="<c:url value='/template/webscripts/sweetalert/dist/sweetalert.min.js'/>"></script>
	<script
		src="<c:url value='/template/webscripts/toast/jquery.toast.min.js'/>"></script>
	<script src="<c:url value='/template/webjs/demo.js'/>"></script>
	<script src="<c:url value='/template/webjs/e-magz.js'/>"></script>
</body>
</html>