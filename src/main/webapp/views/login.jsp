<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<div class="log-w3">
		</br>
		<c:if test="${not empty message}">
			<div class="alert alert-${alert}" role="alert">
				${message}
			</div>
		</c:if>
		<div class="w3layouts-main">
			<h2>Sign In Now</h2>
			<form action="<c:url value='/dang-nhap'/>" method="post">
				<input type="text" class="ggg" name="userName" placeholder="USERNAME" required="">
				<input type="password" class="ggg" name="password" placeholder="PASSWORD" required="">
				<span><input type="checkbox" />Remember Me</span>
				<h6><a href="#">Forgot Password?</a></h6>
				<div class="clearfix"></div>
				<input type="hidden" value="login"  name="action"/>
				<input type="submit" value="Sign In" name="login">
			</form>
			<p>Don't Have an Account ?<a href="registration.html">Create an account</a></p>
		</div>
	</div>
</body>
</html>