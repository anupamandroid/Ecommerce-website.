<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>AdminLoginPage</title>

<!------------------------------------------------------------------------------ Bootstrap Core CSS ---------------------------------------------------------------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">

<!-------------------------------------------------------------------------- Bootstrap Core JS & JQuery ---------------------------------------------------------------->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body onload='document.loginForm.username.focus();'>
	<div class="container">

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name="loginForm"
			action="<c:url value='/j_spring_security_check'/>" method="POST"
			class="form-signin"
			style="max-width: 330px; padding: 15px; margin: 0 auto;">
			<h3 class="form-signin-heading">ADMIN</h3>
			<hr>
			<h4 class="form-signin-heading">Please sign in</h4>
			<label for="inputEmail" class="sr-only">Email address</label> <input
				type="text" id="inputEmail" name="name" class="form-control"
				placeholder="Email address" required="" autofocus=""> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="inputPassword" name="password"
				class="form-control" placeholder="Password" required="">
			<div class="help-block text-right">
				<a href="">Forget the password ?</a>
			</div>
			<input class="btn btn-lg btn-primary btn-block" type="submit"
				name="submit" value="Submit"> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>
	<!-- /.container -->
	<!------------------------------------------------------------------------------------ Footer ------------------------------------------------------------------------------------->
	<hr>
	<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<p>
					Copyright &copy; 2017 - All Rights Reserved - <a href="#"> Thar
						Art Gallery</a>
				</p>
			</div>
			<div class="col-md-6">
				<p class="text-right">
					Created by <a href="http://ekagga.com/" title="Debraj_Paul">Ekagga
						Technology & Services Pvt.Ltd.</a>
				</p>
			</div>
		</div>
	</div>
	</footer>
	<!------------------------------------------------------------------------------------End Footer ------------------------------------------------------------------------------------->
</body>
</html>