<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>TAG_Admin</title>
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

				<li><a href="${pageContext.request.contextPath}/homePage">TAG
						Home</a></li>
				<li><c:if
						test="${pageContext.request.userPrincipal.name != null}">
						<h5 style="padding-top: 7px;">Welcome :
							${pageContext.request.userPrincipal.name}</h5>
					</c:if></li>
				<li><a href="javascript:formSubmit()"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
			</ul>
		</div>
	</div>
	</nav>
	<!---------------------------------------------------------------------------- End Navigation -------------------------------------------------------------------------------->
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h3>Hello from Admin Page!</h3>
				<h4>Title : ${title}</h4>
				<h4>Message : ${message}</h4>
				<h4>Message : ${error}</h4>
			</div>
			<div class="col-md-8" style="padding-top: 23px;">

				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a
						href="#Authentication" data-toggle="tab">TAG Users
							Authentication</a></li>
					<li role="presentation"><a href="#Add_TAG_Admin"
						data-toggle="tab">Add TAG Admin</a></li>
				</ul>
				
				<div class="tab-content">
				
					<!-- ******************************************************************* Item Details****************************************************************************** -->
					<div class="tab-pane  active" id="Authentication" style="padding-top: 28px;">
						<h2>Items Table</h2>
						<form:form action="fetchAllUser" method="POST" id="itemList">
							<div class="form-group">
								<label>Select item type</label> <select
									onchange="itemCheck(this);" class="form-control"
									name="userRole">
									<option value="">---- Select ----</option>
									<option value="ROLE_USER">TAG User</option>
									<option value="ROLE_ADMIN">TAG Admin</option>
								</select>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form:form>

						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>User Name</th>
										<th>Password</th>
										<th>Role</th>
										<th>Active</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="k" items="${dtoUser}">
										<tr>
											<td>${k.userName}</td>
											<td>${k.password}</td>
											<td>${k.userRole}</td>
											<td>${k.status}</td>
											<td><a href="#" data-toggle="modal" data-target="#"><span
													class="glyphicon glyphicon-pencil"></span></a> | <a href="#"
												data-toggle="modal" data-target="#cancel"><span
													class="glyphicon glyphicon-trash"></span></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- ******************************************************************* End Item Details ****************************************************************************** -->
					
					<!-- ******************************************************************* Add TAG Adminr****************************************************************************** -->
					<div class="tab-pane" id="Add_TAG_Admin" style="padding-top: 28px;">
						<form:form name="loginForm" action="addAdmin" method="POST">

							<div class="form-group">
								<label> Username</label><input type="text"
									class="form-control ifYes" placeholder="Enter email"
									name="adminName">
							</div>

							<div class="form-group">
								<label> Password</label> <input type="password"
									class="form-control ifYes" placeholder="Enter password"
									name="adminPassword">
							</div>

							<button type="submit" class="btn btn-primary">Submit
								Button</button>
							<button type="reset" class="btn btn-default">Reset
								Button</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

						</form:form>
					</div>
					<!-- ******************************************************************* End TAG User****************************************************************************** -->
				</div>

			</div>

		<!-------------------------------------------------------------------------------- Item Detail ---------------------------------------------------------------------------->
		<div class="modal fade" id="cancel" tabindex="-1" role="dialog"
			aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" style="margin-top: 304px;">
				<div class="modal-content">
					<div class="modal-header">
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-3">
								<h4 class="modal-title" id="myLoginLabel">Do want to delete
									it ?</h4>
							</div>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-2">
									<button type="button" class="btn btn-success btn-lg">
										<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
									</button>
								</div>
								<div class="col-md-2">
									<button type="button" class="btn btn-danger btn-lg">
										<span class="glyphicon glyphicon-remove close"
											aria-hidden="true" data-dismiss="modal"></span>
									</button>
								</div>
								<div class="col-md-4"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!------------------------------------------------------------------------------- End item detail -------------------------------------------------------------------------------->

		<!-- csrt for log out-->
		<form action="${logoutUrl}" method="POST" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>
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