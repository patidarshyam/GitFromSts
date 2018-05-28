<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page isELIgnored="false" %> 

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Your Video Site</title>
<!-- Material icon CSS -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="<c:url value="static/css/compiled.min.css"/>"
	rel="stylesheet" />
<!-- Your custom styles (optional) -->
<link href="<c:url value="static/css/style.css"/>" rel="stylesheet" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<%-- <link href="<c:url value="static/css/bootstrap.min.css"/>" rel="stylesheet"/> --%>
<!-- Material Design Bootstrap -->
<%-- <link href="<c:url value="static/css/mdb.min.css"/>" rel="stylesheet"/> --%>
<!-- Jquery -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="./static/js/script.js"></script>

<!-- This script is for iframe video to not play by default as well as click on close button will unbind the video url from src  -->
 <script>
  $(function() {
    $(".video").click(function () {
      var theModal = $(this).data("target"),
      videoSRC = $(this).attr("data-video"),
      videoSRCauto = videoSRC + "?modestbranding=1&rel=0&controls=0&showinfo=0&html5=1&autoplay=1";
      $(theModal + ' iframe').attr('src', videoSRCauto);
      $(theModal + ' button#close').click(function () {
        $(theModal + ' iframe').attr('src', '');
      
      });
    });
  });
  </script>

</head>

<body class="fixed-sn navy-blue-skin">


	<div class="homepage-hero-module">
		<div class="video-container">
			<div class="filter"></div>
			<video class="fillWidth" autoplay="" preload="auto" muted="true"
				loop="" poster="./static/images/banner.jpg">
				<source src="./static/videos/Cloud_spots.mp4" type="video/mp4" />
				Your browser does not support the video tag. I suggest you upgrade
				your browser.
				<source src="PATH_TO_WEBM" type="video/webm" />
				Your browser does not support the video tag. I suggest you upgrade
				your browser.
			</video>


			<!--Mask-->
			<div style="padding-top: 200px;">
				<div class="mask rgba-black-strong">
					<div
						class="container-fluid d-flex align-items-center justify-content-center h-100">
						<div class="row d-flex justify-content-center text-center">
							<div class="col-md-10">

								<!-- Heading -->
								<h2 class="display-4 font-weight-bold white-text pt-5 mb-2">Videos</h2>

								<!-- Divider -->
								<hr class="hr-light">

								<!-- Description -->
								<h4 class="white-text my-4">Lorem ipsum dolor sit amet,
									consectetur adipisicing elit. Deleniti consequuntur.</h4>
								<button type="button" class="btn btn-outline-white">
									Read more<i class="fa fa-book ml-2"></i>
								</button>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.Mask-->
		</div>
	</div>

	<!--Main Navigation-->
	<header>

		<!-- Sidebar navigation -->
		<ul id="slide-out" class="side-nav fixed sn-bg-4 custom-scrollbar">
			<!-- Logo -->
			<li>
				<div class="logo-wrapper waves-light">
					<a href="#"><img
						src="https://mdbootstrap.com/img/logo/mdb-transparent.png"
						class="img-fluid flex-center"></a>
				</div>
			</li>
			<!--/. Logo -->
			<!--Social-->
			<li>
				<ul class="social">
					<li><a class="icons-sm fb-ic"><i class="fa fa-facebook">
						</i></a></li>
					<li><a class="icons-sm pin-ic"><i class="fa fa-pinterest">
						</i></a></li>
					<li><a class="icons-sm gplus-ic"><i
							class="fa fa-google-plus"> </i></a></li>
					<li><a class="icons-sm tw-ic"><i class="fa fa-twitter">
						</i></a></li>
				</ul>
			</li>
			<!--/Social-->
			<!--Search Form-->
			<li>
				<form class="search-form" role="search">
					<div class="form-group waves-light">
						<input type="text" class="form-control" placeholder="Search">
					</div>
				</form>
			</li>
			<!--/.Search Form-->
			<!-- Side navigation links -->
			<li>
				<ul class="collapsible collapsible-accordion">
					<li><a class="collapsible-header waves-effect arrow-r"><i
							class="fa fa-chevron-right"></i> Submit blog<i
							class="fa fa-angle-down rotate-icon"></i></a>
						<div class="collapsible-body">
							<ul>
								<li><a href="#" class="waves-effect">Submit listing</a></li>
								<li><a href="#" class="waves-effect">Registration form</a>
								</li>
							</ul>
						</div></li>
					<li><a class="collapsible-header waves-effect arrow-r"><i
							class="fa fa-hand-pointer-o"></i> Instruction<i
							class="fa fa-angle-down rotate-icon"></i></a>
						<div class="collapsible-body">
							<ul>
								<li><a href="#" class="waves-effect">For bloggers</a></li>
								<li><a href="#" class="waves-effect">For authors</a></li>
							</ul>
						</div></li>
					<li><a class="collapsible-header waves-effect arrow-r"><i
							class="fa fa-eye"></i> About<i
							class="fa fa-angle-down rotate-icon"></i></a>
						<div class="collapsible-body">
							<ul>
								<li><a href="#" class="waves-effect">Introduction</a></li>
								<li><a href="#" class="waves-effect">Monthly meetings</a></li>
							</ul>
						</div></li>
					<li><a class="collapsible-header waves-effect arrow-r"><i
							class="fa fa-envelope-o"></i> Contact me<i
							class="fa fa-angle-down rotate-icon"></i></a>
						<div class="collapsible-body">
							<ul>
								<li><a href="#" class="waves-effect">FAQ</a></li>
								<li><a href="#" class="waves-effect">Write a message</a></li>
							</ul>
						</div></li>
				</ul>
			</li>
			<!--/. Side navigation links -->
			<div class="sidenav-bg mask-strong"></div>
		</ul>
		<!--/. Sidebar navigation -->

		<!-- Navbar -->
		<nav
			class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav navbar-dark ">
			<!-- SideNav slide-out button -->
			<div class="float-left">
				<a href="#" data-activates="slide-out" class="button-collapse"><i
					class="fa fa-bars"></i></a>
			</div>
			<!-- Breadcrumb-->
			<div class="breadcrumb-dn mr-auto">
				<p>Your Video Site</p>
			</div>
			<ul class="nav navbar-nav nav-flex-icons ml-auto">
				<li class="nav-item"><a class="nav-link"><i
						class="fa fa-envelope"></i> <span
						class="clearfix d-none d-sm-inline-block">Contact</span></a></li>
				<li class="nav-item"><a class="nav-link"><i
						class="fa fa-comments-o"></i> <span
						class="clearfix d-none d-sm-inline-block">Support</span></a></li>
				<li class="nav-item"><a class="nav-link"><i
						class="fa fa-user"></i> <span
						class="clearfix d-none d-sm-inline-block">Account</span></a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> More </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>
		</nav>
		<!-- ./Navbar -->

		<!--Mask-->
		<div id="intro" class="view">
			<div class="mask rgba-black-strong">
				<div
					class="container-fluid d-flex align-items-center justify-content-center h-100">
					<div class="row d-flex justify-content-center text-center">
						<div class="col-md-10">
							<!-- Heading -->
							<h2 class="display-4 font-weight-bold white-text pt-5 mb-2">Videos</h2>
							<!-- Divider -->
							<hr class="hr-light">
							<!-- Description -->
							<h4 class="white-text my-4">Lorem ipsum dolor sit amet,
								consectetur adipisicing elit. Deleniti consequuntur.</h4>
							<button type="button" class="btn btn-outline-white">
								Read more<i class="fa fa-book ml-2"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.Mask-->
	</header>
	<!--Main Navigation-->

	<!--Main layout-->
	<main>

	<h2 class="text-center" style="padding-bottom: 20px;">List of
		videos</h2>
	<hr>
	<!--Section: Group of personal cards-->
	<section class="pt-5 mt-3 pb-3">



		<!-- videos grid -->
		<!-- Grid row -->
		<div class="row">
			
			<!-- Grid column -->
			<div class="col-lg-4 col-md-12 mb-4">
				<!-- Modal: Name -->
				<div class="modal fade" id="videoModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<!--  content -->
						<div class="modal-content">
							<!--  body -->
							<div class="modal-body mb-0 p-0">
								<div
									class="embed-responsive embed-responsive-16by9 z-depth-1-half">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<iframe width="100%" height="350" src="" frameborder="0"
										allowfullscreen></iframe>
								</div>
							</div>

							<!--  Footer -->
							<div class="modal-footer justify-content-center">
								<span class="mr-4">Spread the word!</span> <a type="button"
									class="btn-floating btn-sm btn-fb"><i
									class="fa fa-facebook"></i> </a> Twitter <a type="button"
									class="btn-floating btn-sm btn-tw"><i class="fa fa-twitter"></i></a>
								Google + <a type="button" class="btn-floating btn-sm btn-gplus"><i
									class="fa fa-google-plus"></i></a> Linkedin <a type="button"
									class="btn-floating btn-sm btn-ins"><i
									class="fa fa-linkedin"></i></a>

								<button type="button"
									class="btn btn-outline-primary btn-rounded btn-md ml-4"
									id="close"
									data-dismiss="modal" aria-label="Close" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>

				<div id="imgCard">
					<a><img id="imgBox" class="img-fluid z-depth-1 video"
						data-video="./static/videos/video1.mp4"
						src="https://mdbootstrap.com/img/screens/yt/screen-video-1.jpg"
						alt="video" data-toggle="modal" data-target="#videoModal"></a>
					<div id="middle">
						<i class="material-icons">play_circle_filled</i>
					</div>
				</div>
			</div>
			<!-- Grid column -->
			
			<!-- Grid column -->
			<div class="col-lg-4 col-md-12 mb-4">
				<!-- Modal: Name -->
				<div class="modal fade" id="videoModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<!--  content -->
						<div class="modal-content">
							<!--  body -->
							<div class="modal-body mb-0 p-0">
								<div
									class="embed-responsive embed-responsive-16by9 z-depth-1-half">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<iframe width="100%" height="350" src="" frameborder="0"
										allowfullscreen></iframe>
								</div>
							</div>

							<!--  Footer -->
							<div class="modal-footer justify-content-center">
								<span class="mr-4">Spread the word!</span> <a type="button"
									class="btn-floating btn-sm btn-fb"><i
									class="fa fa-facebook"></i> </a> Twitter <a type="button"
									class="btn-floating btn-sm btn-tw"><i class="fa fa-twitter"></i></a>
								Google + <a type="button" class="btn-floating btn-sm btn-gplus"><i
									class="fa fa-google-plus"></i></a> Linkedin <a type="button"
									class="btn-floating btn-sm btn-ins"><i
									class="fa fa-linkedin"></i></a>

								<button type="button"
									class="btn btn-outline-primary btn-rounded btn-md ml-4"
									id="close"
									data-dismiss="modal" aria-label="Close" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>

				<div id="imgCard">
					<a><img id="imgBox" class="img-fluid z-depth-1 video"
						data-video="./static/videos/video1.mp4"
						src="https://mdbootstrap.com/img/screens/yt/screen-video-1.jpg"
						alt="video" data-toggle="modal" data-target="#videoModal"></a>
					<div id="middle">
						<i class="material-icons">play_circle_filled</i>
					</div>
				</div>
			</div>
			<!-- Grid column -->
			
			<!-- Grid column -->
			<div class="col-lg-4 col-md-12 mb-4">
				<!-- Modal: Name -->
				<div class="modal fade" id="videoModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<!--  content -->
						<div class="modal-content">
							<!--  body -->
							<div class="modal-body mb-0 p-0">
								<div
									class="embed-responsive embed-responsive-16by9 z-depth-1-half">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<iframe width="100%" height="350" src="" frameborder="0"
										allowfullscreen></iframe>
								</div>
							</div>

							<!--  Footer -->
							<div class="modal-footer justify-content-center">
								<span class="mr-4">Spread the word!</span> <a type="button"
									class="btn-floating btn-sm btn-fb"><i
									class="fa fa-facebook"></i> </a> Twitter <a type="button"
									class="btn-floating btn-sm btn-tw"><i class="fa fa-twitter"></i></a>
								Google + <a type="button" class="btn-floating btn-sm btn-gplus"><i
									class="fa fa-google-plus"></i></a> Linkedin <a type="button"
									class="btn-floating btn-sm btn-ins"><i
									class="fa fa-linkedin"></i></a>

								<button type="button"
									class="btn btn-outline-primary btn-rounded btn-md ml-4"
									id="close"
									data-dismiss="modal" aria-label="Close" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>

				<div id="imgCard">
					<a><img id="imgBox" class="img-fluid z-depth-1 video"
						data-video="./static/videos/video1.mp4"
						src="https://mdbootstrap.com/img/screens/yt/screen-video-1.jpg"
						alt="video" data-toggle="modal" data-target="#videoModal"></a>
					<div id="middle">
						<i class="material-icons">play_circle_filled</i>
					</div>
				</div>
			</div>
			<!-- Grid column -->

		</div>
		<!-- Grid row -->
		<!-- videos grid -->
		
		
		
		<div class="row">
		<c:forEach var="video" items="${requestScope.videos}">
		<div class="col-lg-4 col-md-12 mb-4">
						<li><a href="getVideo?id=${video}">${video}</a></li>
		</div>
		</c:forEach>
		</div>
		
		

	</section>
	<!--Section: Group of personal cards--> </main>
	<!--Main layout-->

	<!--Fixed sidebar stoper-->
	<div id="stickyStop"></div>

	<!--Footer-->
	<footer id="footer" class="page-footer pt-4 mt-4">

		<!-- <!-- Footer Links
		<div class="container-fluid text-center text-md-left">
			<div class="row wow fadeIn" data-wow-delay="0.2s">
				First column
				<div class="col-md-3">
					<p class="column-title white-text">
						<strong>USEFUL LINKS</strong>
					</p>
					<ul class="list-unstyled">
						<li><a id="footer-link-faq"
							href="#">Frequently Asked
								Questions</a></li>
						<li><a id="footer-link-browsers"
							href="#">Browsers
								and devices</a></li>
						<li><a id="footer-link-affiliate"
							href="#">MDB
								Affiliate Program</a></li>
						<li><a id="footer-link-students"
							href="#">Students and
								universities</a></li>
						<li><a id="footer-link-sponsorship"
							href="#">Sponsorship</a></li>
						<li><a id="footer-link-team"
							href="#">Our Team</a></li>
					</ul>
				</div>
				/.First column
				<hr class="w-100 clearfix d-md-none">
				Second column
				<div class="col-md-3">
					<p class="column-title white-text">
						<strong>IMPORTANT PAGES</strong>
					</p>
					<ul class="list-unstyled">
						<li><a id="footer-link-license"
							href="#">License</a></li>
						<li><a id="footer-link-changelog"
							href="#">ChangeLog</a></li>
						<li><a id="footer-link-policy"
							href="#">Privacy Policy</a></li>
						<li><a id="footer-link-refund"
							href="#">Return/Refund
								policy</a></li>
						<li><a id="footer-link-contact"
							href="#">Contact</a></li>
						<li><a id="footer-link-press"
							href="#">Press
								Pack</a></li>
					</ul>
				</div>
				/.Second column
				<hr class="w-100 clearfix d-md-none">
				Third column
				<div class="col-md-3">
					<p class="column-title white-text">
						<strong>DOCUMENTATION</strong>
					</p>
					<ul class="list-unstyled">
						<li><a id="footer-link-css"
							href="#">CSS</a></li>
						<li><a id="footer-link-components"
							href="#">Components</a></li>
						<li><a id="footer-link-javascript"
							href="#">JavaScript</a></li>
						<li><a id="footer-link-sections"
							href="#">Sections</a></li>
						<li><a id="footer-link-freebies"
							href="#">Freebies</a></li>
						<li><a id="footer-link-templates"
							href="#">Templates</a></li>
					</ul>

				</div>
				/.Third column
				<hr class="w-100 clearfix d-md-none">
				Fourth column
				 <div class="col-md-3 mb-1">
					<p class="column-title white-text">
						<strong>TUTORIALS</strong>
					</p>
					<ul class="list-unstyled">
						<li><a id="footer-link-bootstrap"
							href="#">MDB with
								Bootstrap</a></li>
						<li><a id="footer-link-wordpress"
							href="#">MDB with
								WordPress</a></li>
						<li><a id="footer-link-flexbox"
							href="#">Automation</a></li>
						<li><a id="footer-link-migration"
							href="#">Web Push</a></li>
						<li><a id="footer-link-migration"
							href="#">Customization</a></li>
						<li><a id="footer-link-migration"
							href="#">Angular</a></li>
					</ul>
				</div>
				/.Fourth column

			</div>
		</div>
		/.Footer Links -->
		<hr>
		<!--Call to action-->
		<div class="text-center py-3 wow fadeIn" data-wow-delay="0.2s">

			<div class="btn ">
				<form action="upload" method="post" enctype="multipart/form-data">
					<div class="file-path-wrapper">
						<input class="file-path validate" type="text"
							placeholder="Upload your .mp4 file">
					</div>

					<div class="file-field">
						<div class="btn blue-gradient btn-sm float-left">
							<span><i class="fa fa-cloud-upload mr-2"
								aria-hidden="true"></i>Choose files</span> <input type="file"
								name="file">
						</div>
						<input class="btn blue-gradient btn-sm " type="submit"
							value="upload" />

					</div>

				</form>
			</div>

		</div>

		<hr>
		<!--Call to action-->
		<div class="text-center py-3 wow fadeIn" data-wow-delay="0.2s">
			<ul class="list-unstyled">
				<li>
				<li><a id="footer-button-download" href="#"
					class="btn btn-info"> <fa class="fa fa-download left"></fa>
						Download for free
				</a> <a id="footer-button-newsletter" href="#" class="btn blue-gradient">
						<fa class="fa fa-newspaper-o left"></fa> Subscribe to our
						newsletter
				</a> <a id="footer-button-support" href="#" class="btn btn-indigo">
						<fa class="fa fa-comments-o left"></fa> Support
				</a></li>
			</ul>
		</div>
		<!--/.Call to action-->
		<hr>
		<!--Social buttons-->
		<div class="text-center mb-3 wow fadeIn" data-wow-delay="0.2s">
			<a id="footer-social-facebook" target="_blank" href="#"
				class="btn-floating btn-social-all "><i
				class="fa fa-facebook left"></i></a> <a id="footer-social-twitter"
				target="_blank" href="#" class="btn-floating btn-social-all "><i
				class="fa fa-twitter left"></i></a> <a id="footer-social-youtube"
				target="_blank" href="#" class="btn-floating btn-social-all "><i
				class="fa fa-youtube left"></i></a> <a id="footer-social-gplus"
				target="_blank" href="#" class="btn-floating btn-social-all "><i
				class="fa fa-google-plus left"></i></a> <a id="footer-social-linkedin"
				target="_blank" href="#" class="btn-floating btn-social-all "><i
				class="fa fa-linkedin left"></i></a> <a id="footer-social-dribble"
				target="_blank" href="#" class="btn-floating btn-social-all "><i
				class="fa fa-dribbble left"></i></a> <a id="footer-social-pinterest"
				target="_blank" href="#/" class="btn-floating btn-social-all "><i
				class="fa fa-pinterest left"></i></a> <a id="footer-social-codepen"
				target="_blank" href="#" class="btn-floating btn-social-all "><i
				class="fa fa-codepen left"></i></a> <a id="footer-social-github"
				target="_blank" href="#" class="btn btn-floating btn-social-all "><i
				class="fa fa-github left"></i></a>
		</div>
		<!--/.Social buttons-->
		<!--Copyright-->
		<div class="footer-copyright wow fadeIn py-3 text-center"
			data-wow-delay="0.2s">
			<div class="container-fluid">
				&copy; 2018 Copyright: <a href="#"> yourvideosite.com </a>
			</div>
		</div>
		<!--/.Copyright-->

	</footer>
	<!--/.Footer-->



	<!-- SCRIPTS for left side bar -->
	<!-- JQuery -->
	<script type="text/javascript" src="./static/js/compiled.min.js"></script>


	<script>
		// SideNav Initialization
		$(".button-collapse").sideNav();

		new WOW().init();
	</script>

</body>

</html>