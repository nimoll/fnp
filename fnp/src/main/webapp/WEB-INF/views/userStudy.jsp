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
		<!-- Scripts -->
			<script src="resources/assets/js/jquery.min.js"></script>
			<script src="resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="resources/assets/js/browser.min.js"></script>
			<script src="resources/assets/js/breakpoints.min.js"></script>
			<script src="resources/assets/js/util.js"></script>
			<script src="resources/assets/js/main.js"></script>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<c:import url="common/header.jsp" />


					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="main.do">Home</a></li>
								<li><a href="introduce.do">소개</a></li>
								<li><a href="studymain.do?page=1">스터디</a></li>
								<li class="current"><a href="userstudy.do">개인공부 관리</a></li>
								<li><a href="notice.do">공지사항</a></li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-3 col-12-narrower">
								<div id="sidebar1">

									<!-- Sidebar 1 -->

										<section>
											<h3>Just a Subheading</h3>
											<p>Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus.
											Praesent semper mod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat.
											Aliquam luctus et mattis lectus sit amet pulvinar. Nam turpis et nisi etiam.</p>
											<footer>
												<a href="#" class="button">Continue Reading</a>
											</footer>
										</section>

										<section>
											<h3>Another Subheading</h3>
											<ul class="links">
												<li><a href="#">Amet turpis, feugiat sit amet</a></li>
												<li><a href="#">Ornare in hendrerit lectus</a></li>
												<li><a href="#">Semper mod quis eget dolore</a></li>
												<li><a href="#">Consequat lorem phasellus</a></li>
												<li><a href="#">Amet turpis feugiat amet</a></li>
												<li><a href="#">Semper mod quisturpis nisi</a></li>
											</ul>
											<footer>
												<a href="#" class="button">More Random Links</a>
											</footer>
										</section>

								</div>
							</div>
							<div class="col-6 col-12-narrower imp-narrower">
								<div id="content">

									<!-- Content -->

										<article>
											<header>
												<h2>Two Sidebar</h2>
												<p>Yup. Two sidebars at the same time.</p>
											</header>

											<span class="image featured"><img src="resources/images/banner.jpg" alt="" /></span>

											<p>Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus.
											Praesent semper mod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat.
											Aliquam luctus et mattis lectus sit amet pulvinar. Nam turpis nisi
											consequat etiam lorem ipsum dolor sit amet nullam.</p>

											<h3>And Yet Another Subheading</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac quam risus, at tempus
											justo. Sed dictum rutrum massa eu volutpat. Quisque vitae hendrerit sem. Pellentesque lorem felis,
											ultricies a bibendum id, bibendum sit amet nisl. Mauris et lorem quam. Maecenas rutrum imperdiet
											rhoncus dui quis euismod. Maecenas lorem tellus, congue et condimentum ac, ullamcorper non sapien.
											Donec sagittis massa et leo semper a scelerisque metus faucibus. Morbi congue mattis mi.
											Phasellus sed nisl vitae risus tristique volutpat. Cras rutrum commodo luctus.</p>

											<p>Phasellus odio risus, faucibus et viverra vitae, eleifend ac purus. Praesent mattis, enim
											quis hendrerit porttitor, sapien tortor viverra magna, sit amet rhoncus nisl lacus nec arcu.
											Maecenas tortor mauris, consectetur pellentesque dapibus eget, tincidunt vitae arcu.
											Vestibulum purus augue, tincidunt sit amet iaculis id, porta eu purus.</p>
										</article>

								</div>
							</div>
							<div class="col-3 col-12-narrower">
								<div id="sidebar2">

									<!-- Sidebar 2 -->
									<section>
											
		                                 <table id="quick">
		                                    <tr>
		                                    	<td style="background-color: #eee;">
		                                    		<font size="3">Quick<br>Menu</font>
		                                    	</td>
		                                    </tr>
		                                    <tr>
		                                    	<td>
		                                    		<span class="fa fa-clock-o fa-3x" aria-hidden="true"></span>
		                                    	</td>
		                                    </tr>
		                                    <tr>
		                                    	<td>마이<br>페이지</td>
		                                    </tr>
		                                    <tr>
		                                    	<td>고객<br>센터</td>
		                                    </tr>
		                                    <tr>
		                                    	<td>내가 본 스터디</td>
		                                    </tr>
		                                    <tr>
		                                    	<td>신고<br>하기</td>
		                                    </tr>
		                                 </table>
									</section>
								</div>
							</div>
						</div>
					</div>
				</section>
		</div>
<c:import url="common/footer.jsp" />
	</body>
</html>