<%@ page language="java" contentType="text/html;"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Book Store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="theme-color" content="#03a6f3">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/styles.css">
</head>

<body>
	<header>
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<a href="#" class="web-url">www.bookstore.com</a>
					</div>
					<div class="col-md-6">
						<h5>Free Shipping Over $99 + 3 Free Samples With Every Order</h5>
					</div>
					<div class="col-md-3">
						<span class="ph-number">Call : 800 1234 5678</span>
					</div>
				</div>
			</div>
		</div>
		<div class="main-menu">
			<div class="container">
				<nav class="navbar navbar-expand-lg navbar-light">
					<a class="navbar-brand" href="http://localhost:8080/registrationform/index"><img
						src="resources/images/logo.png" alt="logo"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="navbar-item"><a href="http://localhost:8080/registrationform/index"
								class="nav-link">Home</a></li>
							<li class="navbar-item"><a href="http://localhost:8080/registrationform/shop" class="nav-link">Shop</a>
							</li>
							<li class="navbar-item"><a href="http://localhost:8080/registrationform/about"
								class="nav-link">About</a></li>
							<li class="navbar-item"><a href="http://localhost:8080/registrationform/faq" class="nav-link">FAQ</a>
							</li>

						</ul>
						
						<div class="cart my-2 my-lg-0">
							<form action="getCard" method="post">
								<button class="btn ">Cart</button>
							</form>
						</div>
						<form class="form-inline my-2 my-lg-0" method='post'
							action='searchForBook'>
							<input class="form-control mr-sm-2" name="userInput"
								type="search" placeholder="Search here..." aria-label="Search">
							<span class="fa fa-search"></span>
						</form>
						<form action="clicklogoutbutton" method="POST">
							<input style="margin: 25px;" type='submit' value='Logout'
								class="btn black" />
						</form>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<div class="breadcrumb">
		<div class="container">
			<a class="breadcrumb-item" href="http://localhost:8080/registrationform/index">Home</a> <span
				class="breadcrumb-item active">Products</span>
		</div>
	</div>
	<section class="static about-sec">
		<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
		<div class="container">
			<h2>results for ${userInput}</h2>
			<div class="recent-book-sec">
				<div class="row">
					<c:forEach var='book' items='${searchResults}'>
						<div class="col-md-3">
							<div class="item">
								<img src="resources/images/r1.jpg" alt="img">
								<h3>
									<a href='viewProductData/${book.isbn}'>${book.title}</a>
								</h3>
								<h6>
									<span class="price">${book.sellingPrice}</span> $ / <a
										href='viewProductData/${book.isbn}'>Buy Now</a>
									<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
									<c:choose>
										<c:when test = "${p.isManager == 1}">
											/ <a href='viewBookModificationPage/${book.isbn}'>Modify</a>
										</c:when>
								 	</c:choose>
								</h6>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="address">
						<h4>Our Address</h4>
						<h6>The BookStore Theme, 4th Store Beside that building, USA</h6>
						<h6>Call : 800 1234 5678</h6>
						<h6>Email : info@bookstore.com</h6>
					</div>
					<div class="timing">
						<h4>Timing</h4>
						<h6>Mon - Fri: 7am - 10pm</h6>
						<h6>​​Saturday: 8am - 10pm</h6>
						<h6>​Sunday: 8am - 11pm</h6>
					</div>
				</div>
				<div class="col-md-3">
					<div class="navigation">
						<h4>Navigation</h4>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About Us</a></li>
							<li><a href="privacy-policy.html">Privacy Policy</a></li>
							<li><a href="terms-conditions.html">Terms</a></li>
							<li><a href="products.html">Products</a></li>
						</ul>
					</div>
					<div class="navigation">
						<h4>Help</h4>
						<ul>
							<li><a href="#">Shipping & Returns</a></li>
							<li><a href="privacy-policy.html">Privacy</a></li>
							<li><a href="#">FAQ’s</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form">
						<h3>Quick Contact us</h3>
						<h6>We are now offering some good discount on selected books
							go and shop them</h6>
						<form>
							<div class="row">
								<div class="col-md-6">
									<input placeholder="Name" required>
								</div>
								<div class="col-md-6">
									<input type="email" placeholder="Email" required>
								</div>
								<div class="col-md-12">
									<textarea placeholder="Messege"></textarea>
								</div>
								<div class="col-md-12">
									<button class="btn black">Alright, Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h5>(C) 2017. All Rights Reserved. BookStore Wordpress Theme</h5>
					</div>
					<div class="col-md-6">
						<div class="share align-middle">
							<span class="fb"><i class="fa fa-facebook-official"></i></span> <span
								class="instagram"><i class="fa fa-instagram"></i></span> <span
								class="twitter"><i class="fa fa-twitter"></i></span> <span
								class="pinterest"><i class="fa fa-pinterest"></i></span> <span
								class="google"><i class="fa fa-google-plus"></i></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/custom.js"></script>
</body>

</html>