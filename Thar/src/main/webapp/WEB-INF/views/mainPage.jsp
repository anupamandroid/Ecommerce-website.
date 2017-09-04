<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>TharArtGallery</title>

<!------------------------------------------------------------------------------ Bootstrap Core CSS ---------------------------------------------------------------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">

<!------------------------------------------------------------------------------ Customs CSS ------------------------------------------------------------------------->
<link rel="stylesheet"
	href="<c:url value="/resources/CoolTheme/css/project.css"/>">
<!-------------------------------------------------------------------------- Bootstrap Core JS & JQuery ---------------------------------------------------------------->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!------------------------------------------------------------------------------- Customs JS ------------------------------------------------------------------------------>
<script src="<c:url value="/resources/CoolTheme/js/project.js"/>"></script>

</head>

<body>
	<div style="background-color: #e5e5e5;">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<img class="img-responsive"
						src="<c:url value="/resources/CoolTheme/images/logo.png"/>"
						alt="Los Angeles">
				</div>
				<div class="col-md-5" style="margin-top: 21px;">
					<div class="row" style="float: right;">
						<div class="input-group col-md-12">
							<div class="input-group" style="margin-top: 13px;">
								<input type="text" class="form-control"
									placeholder="Search for..."> <span
									class="input-group-btn">
									<button class="btn btn-primary" type="button">Go!</button>
								</span>
							</div>
						</div>

						<div class="input-group col-md-12">
							<div style="margin-top: 13px;">
								<a href="#" data-toggle="modal" data-target="#myLogin"><span
									class="glyphicon glyphicon-log-in"></span> Login</a> || <a href="#"
									data-toggle="modal" data-target="#myCart"><span
									class="glyphicon glyphicon-shopping-cart"></span> Cart</a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!--------------------------------------------------------------------------- Navigation ---------------------------------------------------------------------------->
	<nav id="navid" class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#brass_handicrafts">Brass Handicrafts</a></li>
				<li><a href="#console_table">Console Table</a></li>
				<li><a href="#sideboards_item">Sideboards</a></li>
				<li><a href="#wardrobes_item">Wardrobes</a></li>
				<li><a href="#contact">Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<!---------------------------------------------------------------------------- End Navigation -------------------------------------------------------------------------------->
	<!-- Created by <a href="http://linkedin.com/in/debraj-paul-442175b0">Debraj Paul</a> -->
	<!-------------------------------------------------------------------------------- Login ---------------------------------------------------------------------------->
	<div class="modal fade" id="myLogin" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" style="margin-top: 304px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myLoginLabel">Welcome to Thar</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-8"
							style="border-right: 1px dotted #C2C2C2; padding-right: 30px;">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs">
								<li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
								<li><a href="#Registration" data-toggle="tab">Registration</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane active" id="Login">
									<form role="form" class="form-horizontal">
										<div class="form-group">
											<label for="email" class="col-sm-2 control-label">
												Email</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="email1"
													placeholder="Email" />
											</div>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1"
												class="col-sm-2 control-label"> Password</label>
											<div class="col-sm-10">
												<input type="email" class="form-control"
													id="exampleInputPassword1" placeholder="Email" />
											</div>
										</div>
										<div class="row">
											<div class="col-sm-2"></div>
											<div class="col-sm-10">
												<button type="submit" class="btn btn-primary btn-sm">
													Submit</button>
												<a href="javascript:;">Forgot your password?</a>
											</div>
										</div>
									</form>
								</div>
								<div class="tab-pane" id="Registration">
									<form role="form" class="form-horizontal">
										<div class="form-group">
											<label for="email" class="col-sm-2 control-label">
												Name</label>
											<div class="col-sm-10">
												<div class="row">
													<div class="col-md-3">
														<select class="form-control">
															<option>Mr.</option>
															<option>Ms.</option>
															<option>Mrs.</option>
														</select>
													</div>
													<div class="col-md-9">
														<input type="text" class="form-control" placeholder="Name" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="email" class="col-sm-2 control-label">
												Email</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="email"
													placeholder="Email" />
											</div>
										</div>
										<div class="form-group">
											<label for="mobile" class="col-sm-2 control-label">
												Mobile</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="mobile"
													placeholder="Mobile" />
											</div>
										</div>
										<div class="form-group">
											<label for="password" class="col-sm-2 control-label">
												Password</label>
											<div class="col-sm-10">
												<input type="password" class="form-control" id="password"
													placeholder="Password" />
											</div>
										</div>
										<div class="row">
											<div class="col-sm-2"></div>
											<div class="col-sm-10">
												<button type="button" class="btn btn-primary btn-sm">
													Save & Continue</button>
												<button type="button" class="btn btn-default btn-sm">
													Cancel</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div id="OR" class="hidden-xs">OR</div>
						</div>
						<div class="col-md-4">
							<div class="row text-center sign-with">
								<div class="col-md-12">
									<h3>Sign in with</h3>
								</div>
								<div class="col-md-12">
									<div class="btn-group btn-group-justified">
										<a href="#" class="btn btn-primary">Facebook</a> <a href="#"
											class="btn btn-danger"> Google</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!------------------------------------------------------------------------------- End Login -------------------------------------------------------------------------------->


	<!--------------------------------------------------------------------------------- Slides --------------------------------------------------------------------------------->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img class="img-responsive"
					src="<c:url value="/resources/CoolTheme/images/carouselSlider/classic6.jpg"/>"
					alt="Los Angeles" style="width: 100%;">
			</div>

			<div class="item">
				<img class="img-responsive"
					src="<c:url value="/resources/CoolTheme/images/carouselSlider/classic1.jpg"/>"
					alt="New york" style="width: 100%;">
			</div>

			<div class="item">
				<img class="img-responsive"
					src="<c:url value="/resources/CoolTheme/images/carouselSlider/classic5.jpg"/>"
					alt="Chicago" style="width: 100%;">
			</div>

			<div class="item">
				<img class="img-responsive"
					src="<c:url value="/resources/CoolTheme/images/carouselSlider/classic4.jpg"/>"
					alt="New york" style="width: 100%;">
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!-------------------------------------------------------------------------------- End Sildes ---------------------------------------------------------------------------------->
	<!------------------------------------------------------------------------------- Container ------------------------------------------------------------------------------------->
	<hr>
	<div class="container">
		<!--------------------------------------------------------------Brass Handicrafts ----------------------------------------------------------------------------------------------->
		<!-- Title -->
		<div id="brass_handicrafts" class="row">
			<div class="col-lg-12">
				<h3>Brass Handicrafts</h3>
			</div>
		</div>
		<!-- /.row -->
		<div id="myThumbnail" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myThumbnail" data-slide-to="0" class="active"></li>
				<li data-target="#myThumbnail" data-slide-to="1"></li>
				<li data-target="#myThumbnail" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<c:set var="count" value="${count=0	}"></c:set>
				<c:forEach var="i" items="${dto}">

					<c:if test="${count > 8}">${count=count-4}</c:if>
					<c:choose>
						<c:when test="${count == 0}">
							<div class="item active">
						</c:when>
						<c:when test="${count%4 ==0 && count > 0}">
							<div class="item">
						</c:when>
					</c:choose>
					<div style="display: none;">${count=count+1}</div>

					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/${i.mainImageUrl}"/>"
								alt="Dining Set 1">
							<div class="caption">
								<h4>${i.itemName}</h4>
								<p>
									Brand:- Thar Handicrafts Bangalore <br>
									<i class="fa fa-inr" style="font-size: 20px; color: #204d74;">
										${i.itemSalesPrice} </i>
								</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href=""
										class="btn btn-default" data-toggle="modal"
										onclick="invokeModel(${i.itemId}, '${i.itemName}','${i.productDetail}',${i.itemSalesPrice},${i.itemHeight},${i.itemLength},${i.itemWidth},${i.itemWeight},'${i.mainImageUrl}','${i.otherImageUrl1}','${i.otherImageUrl2}','${i.otherImageUrl3}');">
										More Info</a>

								</p>
							</div>
						</div>
					</div>

					<c:if test="${count%4 == 0}">
			</div>
			</c:if>
			</c:forEach>
		</div>
	</div>

	<!-- Left and right controls -->
	<a class="left carousel-control" href="#myThumbnail" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span> <span
		class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myThumbnail" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span> <span
		class="sr-only">Next</span>
	</a>
	</div>
	</div>
	<!-------------------------------------------------------------- End Brass Handicrafts ----------------------------------------------------------------------------------------------->
	<!-------------------------------------------------------------------------------- Item Detail ---------------------------------------------------------------------------->
	<div class="modal fade" id="knowMore" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" aria-hidden="true">

		<div class="modal-dialog modal-lg" style="margin-top: 304px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">x</button>
					<h4 class="modal-title" id="myLoginLabel">Item Description</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<img id="image" class="img-responsive" id="item-image" src="">
						</div>
						<div class="col-md-8"
							style="border-right: 1px dotted #C2C2C2; padding-right: 30px;">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#itemDetail" data-toggle="tab">Item
										Detail </a></li>
								<li><a href="#placeOrder" data-toggle="tab"> Place
										Request</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="itemDetail">
									<h3 id="name"></h3>
									<p>
										Brand:- <i>Thar Handicrafts Bangalore</i> <br> Description:-
										<i id="desciption"></i><br> Item height:- <i id="height"></i>cms,
										Item length:- <i id="length"></i>cms <br> Item width:-
										<i id="width"></i>cms, Item weight:- <i id="weight"></i>gms <br> <br>
										<i id="money" class="fa fa-inr" style="font-size: 20px; color: #204d74;"></i>
									</p>
								</div>
								<div class="tab-pane" id="placeOrder">
									<form role="form" class="form-horizontal" action="order"
										method="POST">
										<div class="form-group">
											<label for="email" class="col-sm-2 control-label">Name</label>
											<div class="col-sm-10">
												<div class="row">
													<div class="col-md-3">
														<select class="form-control">
															<option>Mr.</option>
															<option>Ms.</option>
															<option>Mrs.</option>
														</select>
													</div>
													<div class="col-md-9">
														<input type="text" class="form-control" placeholder="Name"
															name="orderName" />
													</div>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="email" class="col-sm-2 control-label">Email</label>
											<div class="col-sm-10">
												 <input type="email" class="form-control" id="email"
													placeholder="Email" name="orderEmail" />
											</div>
										</div>
										<div class="form-group">
											<label for="mobile" class="col-sm-2 control-label">Mobile</label>
											<div class="col-sm-10">
												<input type="number" class="form-control" id="mobile"
													placeholder="Mobile" name="orderNumber" />
											</div>
										</div>
										<div class="row">
											<div class="col-sm-2"></div>
											<div class="col-sm-10">
												<button type="submit" class="btn btn-primary btn-sm">Send
													Request</button>
												<button type="reset" class="btn btn-default btn-sm">Cancel</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!------------------------------------------------------------------------------- End item detail -------------------------------------------------------------------------------->

	<!-------------------------------------------------------------- Bed ----------------------------------------------------------------------------------------------->

	<!-------------------------------------------------------------- End Bed ----------------------------------------------------------------------------------------------->
	<!-------------------------------------------------------------- Console Table ----------------------------------------------------------------------------------------------->

	<div class="container">
		<hr>
		<!-- Title -->
		<div id="console_table" class="row">
			<div class="col-lg-12">
				<h3>Console Table</h3>
			</div>
		</div>
		<!-- /.row -->
		<div id="myConsole" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myConsole" data-slide-to="0" class="active"></li>
				<li data-target="#myConsole" data-slide-to="1"></li>
				<li data-target="#myConsole" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">


					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/consoleTable/console (1).jpg"/>"
								alt="Dining Set 4">
							<div class="caption">
								<h3>White Dining Chair</h3>
								<p>Full Size of Oriental Rug Brown Chair Storange Cabinet
									Classic Wooden</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>


					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/consoleTable/console (2).jpg"/>"
								alt="Dining Set 4">
							<div class="caption">
								<h3>White Dining Chair</h3>
								<p>Full Size of Oriental Rug Brown Chair Storange Cabinet
									Classic Wooden</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/consoleTable/console (3).jpg"/>"
								alt="Dining Set 1">
							<div class="caption">
								<h3>Dining Set</h3>
								<p>Furniture & Mattress we have dining room furniture to fit
									any home room.</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/consoleTable/console (4).jpg"/>"
								alt="Dining Set 1">
							<div class="caption">
								<h3>Dining Set</h3>
								<p>Furniture & Mattress we have dining room furniture to fit
									any home room.</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

				</div>

				<div class="item">
					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/consoleTable/console (3).jpg"/>"
								alt="Dining Set 2">
							<div class="caption">
								<h3>Classic Dining</h3>
								<p>Dining Set-7 Piece-Chanel Furniture & Mattress</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myConsole" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myConsole"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-------------------------------------------------------------- End Console Table ----------------------------------------------------------------------------------------------->
	<!-------------------------------------------------------------- Sideboards ----------------------------------------------------------------------------------------------->

	<!-- Title -->
	<div class="container">
		<hr>
		<div id="sideboards_item" class="row">
			<div class="col-lg-12">
				<h3>Sideboards</h3>
			</div>
		</div>
		<!-- /.row -->
		<div id="mySideboards" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#mySideboards" data-slide-to="0" class="active"></li>
				<li data-target="#mySideboards" data-slide-to="1"></li>
				<li data-target="#mySideboards" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">


					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/sideboards/sideboards (1).jpg"/>"
								alt="Dining Set 4">
							<div class="caption">
								<h3>White Dining Chair</h3>
								<p>Full Size of Oriental Rug Brown Chair Storange Cabinet
									Classic Wooden</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>


					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/sideboards/sideboards (2).jpg"/>"
								alt="Dining Set 4">
							<div class="caption">
								<h3>White Dining Chair</h3>
								<p>Full Size of Oriental Rug Brown Chair Storange Cabinet
									Classic Wooden</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/sideboards/sideboards (3).jpg"/>"
								alt="Dining Set 1">
							<div class="caption">
								<h3>Dining Set</h3>
								<p>Furniture & Mattress we have dining room furniture to fit
									any home room.</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/sideboards/sideboards (4).jpg"/>"
								alt="Dining Set 1">
							<div class="caption">
								<h3>Dining Set</h3>
								<p>Furniture & Mattress we have dining room furniture to fit
									any home room.</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

				</div>

				<div class="item">
					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/sideboards/sideboards (2).jpg"/>"
								alt="Dining Set 2">
							<div class="caption">
								<h3>Classic Dining</h3>
								<p>Dining Set-7 Piece-Chanel Furniture & Mattress</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#mySideboards"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#mySideboards"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-------------------------------------------------------------- End Sideboards ----------------------------------------------------------------------------------------------->
	<!-------------------------------------------------------------- Wardrobes ----------------------------------------------------------------------------------------------->

	<!-- Title -->
	<div class="container">
		<hr>
		<div id="wardrobes_item" class="row">
			<div class="col-lg-12">
				<h3>Wardrobes</h3>
			</div>
		</div>
		<!-- /.row -->
		<div id="myWardrobes" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myWardrobes" data-slide-to="0" class="active"></li>
				<li data-target="#myWardrobes" data-slide-to="1"></li>
				<li data-target="#myWardrobes" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">


					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/wardrobes/wardrobes (1).jpg"/>"
								alt="Dining Set 4">
							<div class="caption">
								<h3>White Dining Chair</h3>
								<p>Full Size of Oriental Rug Brown Chair Storange Cabinet
									Classic Wooden</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>


					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/wardrobes/wardrobes (2).jpg"/>"
								alt="Dining Set 4">
							<div class="caption">
								<h3>White Dining Chair</h3>
								<p>Full Size of Oriental Rug Brown Chair Storange Cabinet
									Classic Wooden</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/wardrobes/wardrobes (3).jpg"/>"
								alt="Dining Set 1">
							<div class="caption">
								<h3>Dining Set</h3>
								<p>Furniture & Mattress we have dining room furniture to fit
									any home room.</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/wardrobes/wardrobes (4).jpg"/>"
								alt="Dining Set 1">
							<div class="caption">
								<h3>Dining Set</h3>
								<p>Furniture & Mattress we have dining room furniture to fit
									any home room.</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>





				</div>

				<div class="item">
					<div class="col-md-3 col-sm-6 hero-feature">
						<div class="thumbnail">
							<img
								src="<c:url value="/resources/CoolTheme/images/wardrobes/wardrobes (2).jpg"/>"
								alt="Dining Set 2">
							<div class="caption">
								<h3>Classic Dining</h3>
								<p>Dining Set-7 Piece-Chanel Furniture & Mattress</p>
								<p>
									<a href="#" class="btn btn-primary">Buy Now!</a> <a href="#"
										class="btn btn-default">More Info</a>
								</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myWardrobes"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myWardrobes"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<!-------------------------------------------------------------- End Wardrobes ----------------------------------------------------------------------------------------------->
		<hr>
	</div>
	<!------------------------------------------------------------------------------------ End Container ------------------------------------------------------------------------------------->

	<!------------------------------------------------------------------------------------ Footer ------------------------------------------------------------------------------------------->

	<footer class="footer">
	<div style="background-color: #e5e5e5;">
		<!----------------------------------------------------------------------------- Contact Information ------------------------------------------------------------------------------------->
		<div class="container">
			<div id="contact" class="row"
				style="padding-bottom: 19px; padding-top: 37px;">
				<div class="col-md-5">
					<h4 style="font-family: sans-serif;">Feedback or Q/A</h4>
					<hr>
					<form role="form" class="form-horizontal">
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label"> Name</label>
							<div class="col-sm-10">
								<div class="row">
									<div class="col-md-3">
										<select class="form-control">
											<option>Mr.</option>
											<option>Ms.</option>
											<option>Mrs.</option>
										</select>
									</div>
									<div class="col-md-9">
										<input type="text" class="form-control" placeholder="Name" />
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label"> Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="email"
									placeholder="Email" />
							</div>
						</div>
						<div class="form-group">
						<div class="col-sm-12">
								<textarea class="form-control ifYes" rows="3" name="itemDetail" placeholder="Feedback or Q/A"></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-7"></div>
							<div class="col-sm-5">
								<button type="submit" class="btn btn-primary btn-sm">
									Send Request</button>
								<button type="button" class="btn btn-default btn-sm">
									Cancel</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-5">
					<h4 style="font-family: sans-serif;">Subscribe !</h4>
					<hr>
					<div class="row">
						<div class="col-md-12">
							<form:form class="form-inline" action="newsLetter" method="post">
								<label> SIGN UP TO RECEIVE THE LATEST NEWS</label><br> <br> <input
									type="email" class="form-control" size="30"
									placeholder="Email Address" name="email" required="">
								<button type="submit" class="btn btn-primary">Sign Up</button>
							</form:form>
						</div>
					</div>
					<br /> <br />
					<div class="row">
						<div class="col-md-12">
							<a class="btn btn-social-icon btn-twitter" href="#"> <i
								class="fa fa-twitter"> </i></a> <a
								class="btn btn-social-icon btn-facebook" href="#"> <i
								class="fa fa-facebook"> </i></a> <a
								class="btn btn-social-icon btn-google" href="#"> <i
								class="fa fa-google-plus"></i></a> <a
								class="btn btn-social-icon btn-instagram" href="#"> <i
								class="fa fa-instagram"></i></a> <a
								class="btn btn-social-icon btn-linkedin" href="#"> <i
								class="fa fa-linkedin"></i></a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div style="background-color: #204d74;">
		<!----------------------------------------------------------------------------- Contact Information ------------------------------------------------------------------------------------->
		<div class="container">
			<div id="contact" class="row"
				style="padding-bottom: 19px; padding-top: 37px;"">
				<div class="col-md-5" style="color: aliceblue;">
					<h4 style="font-family: sans-serif;">Address</h4>
					<hr>
					<div class="row">
						<div class="col-md-12">
							<p>
								<span class="glyphicon glyphicon-home"></span>
							<div
								style="margin-top: -26px; margin-left: 40px; font-family: -webkit-body;">
								No. 534 (Opp. Dell Software), <br /> Next To SBI Bank Domlur
								Inner Ring Road,<br /> Banglore - 560071
							</div>
							</p>
						</div>
					</div>
					<br />
					<div class="row">
						<div class="col-md-12">
							<p>
								<span class="glyphicon glyphicon-earphone"></span>
							<div
								style="margin-top: -26px; margin-left: 40px; font-family: -webkit-body;">91-80-252-74868,
								91-77-608-91389</div>
							</p>
						</div>
					</div>
					<br />
					<div class="row">
						<div class="col-md-12">
							<p>
								<span class="glyphicon glyphicon-send"></span>
							<div
								style="margin-top: -26px; margin-left: 40px; font-family: -webkit-body;">tharsales@gmail.com,tharhandicrafts.vinod@gmail.com</div>
							</p>
						</div>
					</div>
					<br />
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-5">
					<div class="row">
						<div class="col-md-12" id="googleMap"
							style="width: 97%; height: 259px;">
							<script
								src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDD0cUvFEQIoEDwpHupZxt0735Hpp0i6pc&callback=myMap"></script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="background-color: #e5e5e5;">
		<div class="container" style="padding-top: 20px;">
			<div class="row">
				<div class="col-md-6">
					<p>
						Copyright &copy; 2017 - All Rights Reserved - <a href="#">
							Thar Art Gallery</a>
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
		<!---------------------------------------------------------------------------------- Back to the Top ------------------------------------------------------------------------------>
		<a id="back-to-top" href="#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Click to return on the top page" data-toggle="tooltip"
			data-placement="left"><span
			class="glyphicon glyphicon-chevron-up"></span></a>
	</div>
	</footer>
	<!------------------------------------------------------------------------------------End Footer ------------------------------------------------------------------------------------->
</body>

</html>