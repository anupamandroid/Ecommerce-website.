<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>TAG_User</title>
<!------------------------------------------------------------------------------ Bootstrap Core CSS ---------------------------------------------------------------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">

<!------------------------------------------------------------------------------ Customs CSS ------------------------------------------------------------------------->

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
				<div class="row">
					<h3>Hello from User Page!</h3>
					<h4>Title : ${title}</h4>
					<h4>Message : ${message}</h4>
					<h4>Message : ${error}</h4>
				</div>
			</div>
			<div class="col-md-8" style="padding-top: 23px;">

				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="#list_items"
						data-toggle="tab">List of items</a></li>
					<li role="presentation"><a href="#" data-toggle="tab">Messages</a></li>
					<li role="presentation"><a href="#Add_item"
						data-toggle="tab">Add item</a></li>
					<li role="presentation"><a href="#Add_TAG_User"
						data-toggle="tab">Add TAG User</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane" id="Add_item"
						style="padding-top: 28px;">
						<!-- ******************************************************************* Add Item****************************************************************************** -->

						<form:form name="loginForm" action="savefile" method="POST"
							enctype="multipart/form-data">

							<div class="form-group">
								<label>Select item type</label> <select
									onchange="yesnoCheck(this);" class="form-control"
									name="itemFolder">
									<option value="">---- Select ----</option>
									<option value="brass">Brass Handicraft</option>
									<option value="consoleTable">Console Table</option>
									<option value="sideboards">Sideboards</option>
									<option value="wardrobes">Wardrobes</option>
									<option value="carouselSlider">Customer Slider</option>
								</select>
							</div>

							<div class="form-group">
								<label>Item name</label> <input type="text"
									class="form-control ifYes" placeholder="Enter text"
									name="itemName">
							</div>

							<div class="form-group">
								<label>Items details</label>
								<textarea class="form-control ifYes" rows="3" name="itemDetail"></textarea>
							</div>

							<div class="form-group input-group">
								<span class="input-group-addon"><i class="fa fa-inr"
									style="color: #204d74;"> </i></span> <input id="ifYes" type="text"
									name="price" class="form-control ifYes"> <span
									class="input-group-addon">.00</span>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Height of the item</label> <input id="ifYes"
											type="text" name="itemHeight" class="form-control ifYes"
											placeholder="Enter number">
									</div>

									<div class="form-group">
										<label>Length of the item</label> <input id="ifYes"
											type="text" name="itemLength" class="form-control ifYes"
											placeholder="Enter number">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Width of the item</label> <input id="ifYes" type="text"
											name="itemWidth" class="form-control ifYes"
											placeholder="Enter number">
									</div>

									<div class="form-group">
										<label>Weight of the item</label> <input id="ifYes"
											type="text" name="itemWeight" class="form-control ifYes"
											placeholder="Enter number">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label><span class="glyphicon glyphicon-picture"></span> Maximum four images</label>
								<div class="controls">
									<div class="entry input-group col-xs-3">
										<input name="file" type="file" multiple="multiple">
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-primary" name="multipleSave">Submit
								Button</button>
							<button type="reset" class="btn btn-default">Reset
								Button</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

						</form:form>
					</div>
					<!-- ******************************************************************* End Add Item****************************************************************************** -->
					<!-- ******************************************************************* Item Details****************************************************************************** -->
					<div class="tab-pane active" id="list_items" style="padding-top: 28px;">
						<h2>Items Table</h2>
						<form:form action="itemDetail" method="POST" id="itemList">
							<div class="form-group">
								<label>Select item type</label> <select
									onchange="itemCheck(this);" class="form-control"
									name="itemFolder">
									<option value="">---- Select ----</option>
									<option value="brass">Brass Handicraft</option>
									<option value="consoleTable">Console Table</option>
									<option value="sideboards">Sideboards</option>
									<option value="wardrobes">Wardrobes</option>
									<option value="carouselSlider">Customer Slider</option>
								</select>
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form:form>

						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>Item Name</th>
										<th>Product Detail</th>
										<th>Sales Price</th>
										<th>Item Height</th>
										<th>Item Length</th>
										<th>Item Width</th>
										<th>Item Weight</th>
										<th>Item Main Image Url</th>
										<th>Item Other Image Url 1</th>
										<th>Item Other Image Url 2</th>
										<th>Item Other Image Url 3</th>
										<th>Item Category</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="j" items="${dtoItemDetail}">
										<tr>
											<td>${j.itemName}</td>
											<td>${j.productDetail}</td>
											<td>${j.itemSalesPrice}</td>
											<td>${j.itemHeight}</td>
											<td>${j.itemLength}</td>
											<td>${j.itemWidth}</td>
											<td>${j.itemWeight}</td>
											<td>${j.mainImageUrl }</td>
											<td>${j.otherImageUrl1}</td>
											<td>${j.otherImageUrl2}</td>
											<td>${j.otherImageUrl3}</td>
											<td>${j.itemCategory}</td>
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
					

					<!-- ******************************************************************* Add Discount ****************************************************************************** -->

					<!-- ******************************************************************* End Add Discount****************************************************************************** -->
					<!-- ******************************************************************* Add TAG User****************************************************************************** -->
					<div class="tab-pane" id="Add_TAG_User" style="padding-top: 28px;">
						<form:form name="loginForm" action="addUser" method="POST">

							<div class="form-group">
								<label> Username</label><input type="text"
									class="form-control ifYes" placeholder="Enter email"
									name="userName">
							</div>

							<div class="form-group">
								<label> Password</label> <input type="password"
									class="form-control ifYes" placeholder="Enter password"
									name="userPassword">
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
									<div class="col-md-3"><h4 class="modal-title" id="myLoginLabel">Do want to delete it ?</h4></div>
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
										  <span class="glyphicon glyphicon-remove close" aria-hidden="true"  data-dismiss="modal"></span>
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