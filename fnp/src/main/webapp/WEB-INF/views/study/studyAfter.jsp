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
		<style type="text/css">
			#quick { border: 1px solid #ddd; width: 90%;}
			#quick td { padding: 10px; border: 1px solid #ddd; text-align: center; font-size: small; line-height: 130%; }
			.linebar {
			  width: 100%;
			  background-color: #ddd;
			  border-radius: 20px;
			}
			.skills {
			  text-align: right;
			  padding: 10px;
			  color: white;
			  border-radius: 20px 0 0 20px;
			}
			.css {width: 67%; background-color: #37c0fb; }
			.underline { border-bottom: 1px dotted #37c0fb; }
			.sidemenu ul li { padding-left: 6px; }
			.sidemenu ul li a { border-bottom: none; color: black; }
			.tab { float:left; border-right: 1px dashed #ddd; width: 25%; text-align: center; padding: 15px 0 15px 0; margin: 20px 0 20px 0; background-color: #eee;}
			.tab:hover { cursor: pointer;}
			.tabcontent { clear: left; padding-top: 20px; margin: 0 10px 0 10px; display: none; }
			.timetable { table-layout: fixed; }
			.timetable tr { border-top: 1px solid #ccc; border-bottom: 1px solid #ccc; }
			.timetable tr td { padding: 10px 0 10px 0; border-right: 1px dashed #aaa; }
			.timetable tr th { padding: 10px 0 10px 0; background-color: #eee; border-right: 1px dashed #aaa; }
			.timetable tr td:last-child, .timetable tr th:last-child { border-right: 0 !important; }
		</style>
		<script>
			function openstudyjoin(){
				//참여하기 창 열기
				cw = 500;
				ch = 500;
				sw = screen.availWidth;
				sh = screen.availHeight;
				px = (sw - cw) / 2;
				py = (sh - ch) / 2;
				test = window.open("studyJoin.do", '스터디 참여', 'left=' + px + ', top=' + py + ', width=' + cw + ', height=' + ch + '');
			};
			
			function opentab(pageName, elmnt) {
				  var i, tabcontent, tablinks;
				  tabcontent = document.getElementsByClassName("tabcontent");
				  for (i = 0; i < tabcontent.length; i++) {
				    tabcontent[i].style.display = "none";
				  }
				  tab = document.getElementsByClassName("tab");
				  for (i = 0; i < tab.length; i++) {
				    tab[i].style.backgroundColor = "#eee";
				    tab[i].style.color = "black";
				  }
				  document.getElementById(pageName).style.display = "block";
				  elmnt.style.backgroundColor = "#37c0fb";
				  elmnt.style.color = "white";
			}
			/* $(function(){
				$("#board").load("studyboard.do");
			});  */
			/* $(function(){
				$("#attend").load("studyattend.do");
			}); 
			$(function(){
				$("#admin").load("studyadmin.do");
			});  */
			
			
		</script>
	</head>
	<body class="is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<c:import url="../common/header.jsp" />


					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="main.do">Home</a></li>
								<li><a href="introduce.do">소개</a></li>
								<li class="current"><a href="studymain.do">스터디</a></li>
								<li><a href="userstudy.do">개인공부 관리</a></li>
								<li><a href="notice.do">공지사항</a></li>
							</ul>
						</nav>

				</div>

			<!-- Main -->
				<section class="wrapper style1">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-2 col-12-narrower">
								<div id="sidebar1">

									<!-- Sidebar 1 -->
		
										<div class="sidemenu">
											<h3 style="padding-left: 6px;">스터디</h3>
											<hr style="border: 2px solid #37c0fb;">
											<ul class="alt">
												<li style="padding-top: 15px;"><a>개인정보 수정</a></li>
												<li><a>패스워드 변경</a></li>
												<li><a>마이스터디</a></li>
												<li></li>
											</ul>
										</div>

								</div>
							</div>
							<div class="col-8 col-12-narrower imp-narrower">
								<div id="content">

									<!-- Content -->
										<header style="text-align: center;">
											<h2>내가스터디(스터디명)</h2>
										</header>
										
										<!-- 스터디정보(공통) -->
										<div style="text-align: center;">
											<table style="text-align: center; margin-left: 40px;">
												<tr>
													<td style="border: 1px solid #bbb; height: 200px; width: 200px; vertical-align: middle;">이미지</td>
													<td style="text-align: left; padding-left: 100px; vertical-align: middle;">
														<span class="underline">스터디 정보</span><br>
														<span class="underline">카테고리</span> : 고시<br>
														<span class="underline">나이제한</span> : 없음<br>
														<span class="underline">성별제한</span> : 없음
													</td>
													<td style="border-left: 1px solid #bbb; width: 50%; padding-right: 50px; vertical-align: middle;">
														화상채팅 영역
													</td>
												</tr>
											</table>
										</div>
											<hr style="border: 1px solid #eee;">
											
											<!-- tab -->
											<div class="tab" onclick="opentab('introstudy', this);" style="background-color: #37c0fb; color: white;">스터디소개</div>
											<div class="tab" onclick="opentab('board', this);">게시판</div>
											<div class="tab" onclick="opentab('attend', this);">출석현황</div>
											<div class="tab" onclick="opentab('admin', this);" style="border-right: 0;">스터디원관리</div>
											
											<hr style="border: 1px solid #eee;">
											
											<!-- 스터디소개 -->
											<div id="introstudy" class="tabcontent" style="display: block;">
												<h2 style="text-align: center;">스터디 소개</h2>
												<h3>스터디 기간</h3>
												<p style="font-size: 120%;">2019.03.12 ~ 2019.05.12</p>
												<h3>스터디 시간</h3>
												<table class="timetable">
													<thead>
														<tr style="text-align: center;">
															<th>월</th>
															<th>화</th>
															<th>수</th>
															<th>목</th>
															<th>금</th>
															<th>토</th>
															<th>일</th>
														</tr>
													</thead>
													<tbody>
														<tr style="text-align: center;">
															<td>13:00 ~ 17:00</td>
															<td>없음</td>
															<td>없음</td>
															<td>13:00 ~ 18:00</td>
															<td>20:00 ~ 18:00</td>
															<td>없음</td>
															<td>없음</td>
														</tr>
													</tbody>
												</table>
												<h3>소개</h3>
												<textarea style="resize: none;" rows=5 readonly>
												</textarea>
											</div>
											
											<!-- 게시판 -->
											<div id="board" class="tabcontent">
												<iframe src="studyboard.do" width="100%" height="500px" marginheight="0"></iframe>
											</div>
											
											<!-- 출석현황 -->
											<div id="attend" class="tabcontent">
												<iframe src="studyattend.do" width="100%" height="500px" marginheight="0"></iframe>
											</div>
											
											<!-- 스터디원관리 -->
											<div id="admin" class="tabcontent">
												<iframe src="studyadmin.do" width="100%" height="500px" marginheight="0"></iframe>
											</div>
											<div style="clear:left; height: 40px;"></div>
								</div>
							</div>
							<c:import url="../common/sidebar.jsp"></c:import>
						</div>
					</div>
				</section>
		</div>
<c:import url="../common/footer.jsp" />
	</body>
</html>