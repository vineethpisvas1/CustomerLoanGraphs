<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>SignIn</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
</head>
<body>
	<!-- Page Header -->
	<div class="jumbotron">
		<h2>
			<strong>LOGIN</strong>
		</h2>
	</div>
	<br>
	<br>
	<div class="container"
		style="padding-left: 350px; padding-right: 350px">
		<form action="checkRole" method="post" name="LoginForm">
			<!-- Text Input Boxes -->
			<div class="form-group">
				<label for="usr">Username:</label> <input type="text"
					class="form-control" name="username"
					onkeypress="return isAlphanumeric(event)" path="username" required />
			</div>
			<div class="form-group">
				<label for="usr">Password:</label> <input type="password"
					class="form-control" name="password" path="password" required />
			</div>
			<!-- Submit Button Box -->
			<div align="center">
				<input type="submit" class="btn btn-primary"
					style="font-weight: 700; font-size: 13px" id="signin"
					value="Sign In" name="operation"> <input type="reset"
					class="btn btn-warning" style="font-weight: 700; font-size: 13px"
					style="display:inline" value="Reset" id="reset">
			</div>
		</form>
		<br><br>
		<h3 align="center">${msg}</h3>
	</div>

	<!-- Script -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
</body>
</html>