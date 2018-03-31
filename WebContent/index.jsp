<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome to Poojas Resort Inn</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" property="" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/portal.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Oswald:300,400,700"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Federo" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
<!--//fonts-->
</head>
<body>
	<!-- header -->
	<div class="banner-top">
		<div class="contact-bnr-w3-agile">
			<ul>
				<li><i class="fa fa-envelope" aria-hidden="true"></i><a
					href="mailto:contactus@poojasresort.co.in">contactus@poojasresort.co.in</a></li>
				<li><i class="fa fa-phone" aria-hidden="true"></i>+91
					9809088767</li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="w3_navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<h1>
						<a class="navbar-brand" href="index.html">Poojas <span>Resort</span>
							<p class="logo_w3l_agile_caption">Your Dreamy Resort</p></a>
					</h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav class="menu menu--iris">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item menu__item--current"><a
								href="index.html" class="menu__link">Home</a></li>
							<li class="menu__item"><a href="#about"
								class="menu__link scroll">About</a></li>
							<li class="menu__item"><a href="#gallery"
								class="menu__link scroll">Gallery</a></li>
							<li class="menu__item"><a href="#rooms"
								class="menu__link scroll">Rooms</a></li>
							<li class="menu__item"><a href="#contact"
								class="menu__link scroll">Contact Us</a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
	</div>
	<!-- //header -->
	<!-- banner -->
	<div id="home" class="w3ls-banner">
		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="w3layouts-banner-top">
							<div class="container">
								<div class="agileits-banner-info">
									<h4>High Class Resort</h4>
									<h3>A PERFECT GETAWAY FOR NATURE LOVERS</h3>
									<p>Welcome to our hotels</p>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top1">
							<div class="container">
								<div class="agileits-banner-info">
									<h4>Star Class Resort</h4>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top2">
							<div class="container">
								<div class="agileits-banner-info">
									<h4>Star Resort</h4>
									<h3>want luxurious vacation?</h3>
									<p>Get accommodation today</p>
									<div class="agileits_w3layouts_more menu__item">
										<a href="#" class="menu__link" data-toggle="modal"
											data-target="#myModal">Learn More</a>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!--banner Slider starts Here-->
		</div>
		<div class="thim-click-to-bottom">
			<a href="#about" class="scroll"> <i class="fa fa-long-arrow-down"
				aria-hidden="true"></i>
			</a>
		</div>
	</div>
	<!-- //banner -->
	<!--//Header-->
	<!-- //Modal1 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<!-- Modal1 -->
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>
						Resort <span>Inn</span>
					</h4>
					<img src="images/1.jpg" alt=" " class="img-responsive">
					<h5>We know what you love</h5>
					<p>Providing guests unique and enchanting views from their
						rooms with its exceptional amenities, makes Star Hotel one of
						bests in its kind.Try our food menu, awesome services and friendly
						staff while you are here.</p>
				</div>
			</div>
		</div>
	</div>
	<section id="message1">
		<div class="footer-w3" id="message1">
			<%
				String message = (String) request.getAttribute("message");
			%>
			<%
				if (message != null) {
			%>
			<p>
				<%=message%>
			</p>
			<%
				}
			%>
		</div>
	</section>
	<!-- //Modal1 -->
	<div id="availability-agileits">
		<div class="col-md-3 book-form-left-w3layouts">
			<h2>CHECK AVAILABILITY</h2>
		</div>
		<div class="col-md-9 book-form">
			<form action="CheckAvailability" method="post">
				<div class="fields-w3ls form-left-agileits-w3layouts ">
					<p>Room Type</p>
					<select class="form-control" name="roomtype">
						<option>Select a Room</option>
						<option>Deluxe Room</option>
						<option>Maharaja Room</option>
						<option>Twin Room</option>
						<option>Maharaja Tent</option>
					</select>
				</div>
				<div class="fields-w3ls form-date-w3-agileits">
					<p>CheckIn Date</p>
					<input id="datepicker1" name="datepicker1" type="text"
						value="Select Date" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
						required="">
				</div>
				<div class="fields-w3ls form-date-w3-agileits">
					<p>CheckOut Date</p>
					<input id="datepicker2" name="datepicker2" type="text"
						value="Select Date" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
						required="">
				</div>

				<div class=" form-left-agileits-submit">
					<input type="submit" value="Check Availability">
				</div>
			</form>
		</div>
		<div class="clearfix"><</div>
	</div>
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="agileits_banner_bottom">
				<h3>
					<span>Experience a good stay, enjoy fantastic offers</span> Find
					our friendly welcoming reception
				</h3>
			</div>
			<div class="w3ls_banner_bottom_grids">
				<ul class="cbp-ig-grid">
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_road"></span>
							<h4 class="cbp-ig-title">MASTER BEDROOMS</h4>
							<span class="cbp-ig-category">Resort Inn</span>
						</div>
					</li>
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_cube"></span>
							<h4 class="cbp-ig-title">BALCONY VIEW</h4>
							<span class="cbp-ig-category">Resort Inn</span>
						</div>
					</li>
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_users"></span>
							<h4 class="cbp-ig-title">LARGE CAFE</h4>
							<span class="cbp-ig-category">Resort Inn</span>
						</div>
					</li>
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_ticket"></span>
							<h4 class="cbp-ig-title">WIFI COVERAGE</h4>
							<span class="cbp-ig-category">Resort Inn</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- /about -->
	<div class="about-wthree" id="about">
		<div class="container">
			<div class="ab-w3l-spa">
				<h3 class="title-w3-agileits title-black-wthree">About Our
					Resort Inn</h3>
				<p class="about-para-w3ls">This resort is a perfect gateway for nature lovers. The breath taking locale with tranquil backwaters of river presents an ideal setting for a long awaited vacation. It has a colonial style architecture equipped to accomodate so many persons at a time. Spacious, calonial style double rooms with modern amenities twin bedded cottages will all comforts. The forest near the resort is a home of heard of elephants, sambar and barking deer, crocodiles, tigers and varieties of birds. No where else we can see such a sight seeing of wild life.<br>Resort has large charming room for seminars, meetings with multi media projector and other conference facilities with large play area for kids and mediation hall. </p>
				<img src="images/about.jpg" class="img-responsive" alt="Hair Salon">
				<div class="w3l-slider-img">
					<img src="images/a1.jpg" class="img-responsive" alt="Hair Salon">
				</div>
				<div class="w3ls-info-about">
					<h4>You'll love all the amenities we offer!</h4>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //about -->
	<!--sevices-->
	<div class="advantages">
		<div class="container">
			<div class="advantages-main">
				<h3 class="title-w3-agileits">Our Services</h3>
				<div class="advantage-bottom">
					<div class="col-md-6 advantage-grid left-w3ls wow bounceInLeft"
						data-wow-delay="0.3s">
						<div class="advantage-block ">
							<i class="fa fa-credit-card" aria-hidden="true"></i>
							<h4>Stay First, Pay After!</h4>
							<p>We dont withdraw the money from your account during
								reservation.ll details are systematically provided at the moment
								of reservation and at the check out.</p>
							<p>
								<i class="fa fa-check" aria-hidden="true"></i>Decorated room,
								proper air conditioned
							</p>
							<p>
								<i class="fa fa-check" aria-hidden="true"></i>Private balcony
							</p>

						</div>
					</div>
					<div class="col-md-6 advantage-grid right-w3ls wow zoomIn"
						data-wow-delay="0.3s">
						<div class="advantage-block">
							<i class="fa fa-clock-o" aria-hidden="true"></i>
							<h4>Cafe 24 Multi Cusine Resort</h4>
							<p>The 24 hour coffee shop and bar features Indian, Oriental
								and Continental cuisines, alongside elaborate breakfast,
								fast-food, dessert and beverage selections.</p>
							<p>
								<i class="fa fa-check" aria-hidden="true"></i>24 hours room
								service
							</p>
							<p>
								<i class="fa fa-check" aria-hidden="true"></i>24-hour Concierge
								service
							</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//sevices-->
	<!-- Gallery -->
	<section class="portfolio-w3ls" id="gallery">
		<h3 class="title-w3-agileits title-black-wthree">Our Gallery</h3>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g1.jpg" class="swipebox"><img src="images/g1.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g2.jpg" class="swipebox"><img src="images/g2.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g3.jpg" class="swipebox"><img src="images/g3.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g5.jpg" class="swipebox"><img src="images/g5.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g6.jpg" class="swipebox"><img src="images/g6.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g7.jpg" class="swipebox"><img src="images/g7.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g9.jpg" class="swipebox"><img src="images/g9.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g8.jpg" class="swipebox"><img src="images/g8.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>Poojas Resort</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="clearfix"></div>
	</section>
	<!-- //gallery -->
	<!-- rooms & rates -->
	<div class="plans-section" id="rooms">
		<div class="container">
			<h3 class="title-w3-agileits title-black-wthree">Rooms And Rates</h3>
			<div class="priceing-table-main">
				<div class="col-md-3 price-grid">
					<div class="price-block agile">
						<div class="price-gd-top">
							<img src="images/r1.jpg" alt=" " class="img-responsive" />
							<h4>Twin Room</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>

								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>&#x20b9</span>1500
								</h3>
								<a href="#availability-agileits" class="scroll">Book Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 price-grid ">
					<div class="price-block agile">
						<div class="price-gd-top">
							<img src="images/r2.jpg" alt=" " class="img-responsive" />
							<h4>Deluxe Room</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>&#x20b9</span>2500
								</h3>
								<a href="#availability-agileits" class="scroll">Book Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 price-grid lost">
					<div class="price-block agile">
						<div class="price-gd-top">
							<img src="images/r3.jpg" alt=" " class="img-responsive" />
							<h4>Maharaja Room</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>&#x20b9</span>3500
								</h3>
								<a href="#availability-agileits" class="scroll">Book Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 price-grid wthree lost">
					<div class="price-block agile">
						<div class="price-gd-top ">
							<img src="images/r4.jpg" alt=" " class="img-responsive" />
							<h4>Maharaja Tent</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>&#x20b9</span>4550
								</h3>
								<a href="#availability-agileits" class="scroll">Book Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--// rooms & rates -->
	<!-- contact -->
	<section class="contact-w3ls" id="contact">
		<div class="container">
			<div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2"
				data-aos="flip-left">
				<div class="contact-agileits">
					<h4>Subscribe to our newsletter</h4>
					<form action="#" method="post" name="sent}" id="contactForm"
						novalidate>
						<div class="control-group form-group">
							<div class="controls">
								<label class="contact-p1">Full Name:</label> <input type="text"
									class="form-control" name="name" id="name" required
									data-validation-required-message="Please enter your name.">
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label class="contact-p1">Phone Number:</label> <input
									type="tel" class="form-control" name="phone" id="phone"
									required
									data-validation-required-message="Please enter your phone number.">
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label class="contact-p1">Email Address:</label> <input
									type="email" class="form-control" name="email" id="email"
									required
									data-validation-required-message="Please enter your email address.">
								<p class="help-block"></p>
							</div>
						</div>
						<div id="success"></div>
						<!-- For success/fail messages -->
						<button type="submit" class="btn btn-primary">Send</button>
					</form>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile1"
				data-aos="flip-right">
				<h4>Connect With Us</h4>
				<p class="contact-agile1">
					<strong>Phone :</strong> +91 9809088767
				</p>
				<p class="contact-agile1">
					<strong>Email :</strong> <a
						href="mailto:contactus@poojasresort.co.in">contactus@poojasresort.co.in</a>
				</p>
				<p class="contact-agile1">
					<strong>Address :</strong>H D Kote Taluk, Mysuru , Karnataka - 571114, India
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</section>
	<!-- /contact -->
	<!--/footer -->
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- contact form -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>
	<!-- /contact form -->
	<!-- Calendar -->
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3")
					.datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!-- gallery popup -->
	<link rel="stylesheet" href="css/swipebox.css">
	<script src="js/jquery.swipebox.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
	<!-- //gallery popup -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- flexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto : true,
				pager : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--search-bar-->
	<script src="js/main.js"></script>
	<!--//search-bar-->
	<!--tabs-->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!--//tabs-->
	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>

	<div class="arr-w3ls">
		<a href="#home" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!-- //smooth scrolling -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>