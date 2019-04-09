<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<!--
	Arcana by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>final</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		<style type="text/css">
			.mySlides {display: none}
			.bannerimage {
				background-position: center center;
				background-size: cover;
				height: 28em;
				text-align: center;
				position: relative;
				vertical-align: middle;
			}
			
			/* Slideshow container */
			.slideshow-container {
			  width: 100%;
			  position: relative;
			  margin: auto;
			}
			
			/* Next & previous buttons */
			.prev, .next {
			  cursor: pointer;
			  position: absolute;
			  top: 46%;
			  width: auto;
			  padding: 16px;
			  margin-top: -22px;
			  color: white;
			  font-weight: bold;
			  font-size: 18px;
			  transition: 0.6s ease;
			  border-radius: 0 3px 3px 0;
			  user-select: none;
			}
			
			/* Position the "next button" to the right */
			.next {
			  right: 0;
			  border-radius: 3px 0 0 3px;
			}
			
			/* On hover, add a black background color with a little bit see-through */
			.prev:hover, .next:hover {
			  background-color: rgba(55,192,251,0.4);
			}
			
			/* Caption text */
			.text {
			  background-color: rgba(27, 27, 27, 0.8);
			  color: #f2f2f2;
			  font-size: 1.1em;
			  padding: 21px 12px;
			  position: absolute;
			  bottom: 0;
			  width: 100%;
			  text-align: center;
			  letter-spacing: 1px;
			  word-spacing: 10px;
			  font-style: italic;
			}
			
			/* The dots/bullets/indicators */
			.dot {
			  cursor: pointer;
			  height: 15px;
			  width: 15px;
			  margin: 0 2px;
			  background-color: #bbb;
			  border-radius: 50%;
			  display: inline-block;
			  transition: background-color 0.6s ease;
			}
			
			.active, .dot:hover {
			  background-color: #37C0FB;
			}
			
			/* Fading animation */
			.fade {
			  -webkit-animation-name: fade;
			  -webkit-animation-duration: 1.5s;
			  animation-name: fade;
			  animation-duration: 1.5s;
			}
			
			@-webkit-keyframes fade {
			  from {opacity: .4} 
			  to {opacity: 1}
			}
			
			@keyframes fade {
			  from {opacity: .4} 
			  to {opacity: 1}
			}
			
			/* On smaller screens, decrease text size */
			@media only screen and (max-width: 300px) {
			  .prev, .next,.text {font-size: 11px}
			}
			
		</style>
		<!-- Scripts -->
			<script src="resources/assets/js/jquery.min.js"></script>
			<script src="resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="resources/assets/js/browser.min.js"></script>
			<script src="resources/assets/js/breakpoints.min.js"></script>
			<script src="resources/assets/js/util.js"></script>
			<script src="resources/assets/js/main.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.2/TweenMax.min.js"></script>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">
		<!-- Header -->
		<div id="header">
			<c:import url="common/header.jsp" />
		<!-- Logo -->
			
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a href="main.do">home</a></li>
						<li><a href="introduce.do">소개</a></li>
						<li><a href="studymain.do">스터디</a></li>
						<li><a href="userstudy.do">개인공부 관리</a></li>
						<li><a href="notice.do">공지사항</a></li>
					</ul>
				</nav>
		</div>			
			<!-- Banner -->
				<div style="background-color: white;">
					<div class="slideshow-container">
						
						<div class="mySlides fade">
							<div class="bannerimage" style="background-image: url('/fnp/resources/images/banner2.png');"></div>
						</div>
						
						<div class="mySlides fade" >
						  <div class="bannerimage" style="background-image: url('/fnp/resources/images/image.jpg');"></div>
						</div>
						
						<div class="mySlides fade">
						  <div class="bannerimage" style="background-image: url('/fnp/resources/images/banner.jpg');"></div>
						</div>
						
						<div class="text">
							내가스터디는 대한민국의 건전한 온라인 스터디를 추구합니다.
						</div>
						
						<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
						<a class="next" onclick="plusSlides(1)">&#10095;</a>
						
					</div>
					<br>
						
					<div style="text-align:center">
					  <span class="dot" onclick="currentSlide(1)"></span> 
					  <span class="dot" onclick="currentSlide(2)"></span> 
					  <span class="dot" onclick="currentSlide(3)"></span> 
					</div>
				</div>
				<script>
					var slideIndex = 1;
					showSlides(slideIndex);
					
					function plusSlides(n) {
					  showSlides(slideIndex += n);
					}
					
					function currentSlide(n) {
					  showSlides(slideIndex = n);
					}
					
					function showSlides(n) {
					  var i;
					  var slides = document.getElementsByClassName("mySlides");
					  var dots = document.getElementsByClassName("dot");
					  if (n > slides.length) {slideIndex = 1}    
					  if (n < 1) {slideIndex = slides.length}
					  for (i = 0; i < slides.length; i++) {
					      slides[i].style.display = "none";  
					  }
					  for (i = 0; i < dots.length; i++) {
					      dots[i].className = dots[i].className.replace(" active", "");
					  }
					  slides[slideIndex-1].style.display = "block";  
					  dots[slideIndex-1].className += " active";
					}
					
					setInterval(function(){
						plusSlides(1);
					}, 4000);
					
				</script>
				<!-- <section id="banner">
					<header>
						<em>내가스터디는 &nbsp; 대한민국의 &nbsp; 건전한 &nbsp; 온라인 &nbsp; 스터디를&nbsp; 추구합니다. </em>
					</header>
				</section> -->

			<!-- Highlights -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row gtr-200">
							<section class="col-4 col-12-narrower">
								<div class="box highlight">
									<i class="icon major fa-users" aria-hidden="true"></i>
									<h3>스터디</h3>
									<p>스터디를 쉽게 생성할 수 있어염!~</p>
								</div>
							</section>
							<section class="col-4 col-12-narrower">
								<div class="box highlight">
									<i class="icon major fa-video-camera" aria-hidden="true"></i>
									<h3>화상채팅</h3>
									<p>스터디원끼리 화상채팅을 할 수 있어염!~</p>
								</div>
							</section>
							<section class="col-4 col-12-narrower">
								<div class="box highlight">
									<i class="icon major fa-hourglass-half" aria-hidden="true"></i>
									<h3>개인공부 관리</h3>
									<p>자신의 공부기록을 확인할 수 있어염!~</p>
								</div>
							</section>
						</div>
					</div>
				</section>
		</div>
<c:import url="common/footer.jsp" />
	</body>
</html>