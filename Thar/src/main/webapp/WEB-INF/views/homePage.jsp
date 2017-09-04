<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Store Detail</title>
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
<!------------------------------------------------------------------------------- Customs JS ------------------------------------------------------------------------------>
<script src="<c:url value="/resources/CoolTheme/js/project.js"/>"></script>

</head>
<body>

	<!--------------------------------------------------------------------------- Navigation ---------------------------------------------------------------------------->
	<nav id="navid" class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#myPage">Thar Art Gallery</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<li><a href="${pageContext.request.contextPath}/userPage">TAG
						User</a></li>
				<li><a href="${pageContext.request.contextPath}/adminPage">TAG
						Admin</a></li>
				<li><c:if
						test="${pageContext.request.userPrincipal.name != null}">
						<h5 style="padding-top: 7px;">Welcome :
							${pageContext.request.userPrincipal.name}</h5>
					</c:if></li>
				<li><a href="javascript:formSubmit()"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
			</ul>
		</div>
	</div>
	</nav>
	<!---------------------------------------------------------------------------- End Navigation -------------------------------------------------------------------------------->

	<div class="container">
		<h3>Hello from Home page!</h3>
		<h4>Title : ${title}</h4>
		<h4>Message : ${message}</h4>

		<!-- csrt for log out-->
		<form action="${logoutUrl}" method="POST" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

	</div>
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