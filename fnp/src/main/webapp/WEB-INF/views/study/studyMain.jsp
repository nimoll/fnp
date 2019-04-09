<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			.topbox{
				float: left;
			}
			#quick { 
				border: 1px solid #ddd; width: 90%;
			}
			#quick td { 
				padding: 10px; border: 1px solid #ddd; text-align: center; font-size: small; line-height: 130%;"
			}
		</style>
		<!-- Scripts -->
			<script src="resources/assets/js/jquery.min.js"></script>
			<script src="resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="resources/assets/js/browser.min.js"></script>
			<script src="resources/assets/js/breakpoints.min.js"></script>
			<script src="resources/assets/js/util.js"></script>
			<script src="resources/assets/js/main.js"></script>
			<script type="text/javascript">
				$(function(){
					$.ajax({
						url: "categorySearch.do",
						type: "post",
						dataType: "json",
						success: function(data){
							var objStr = JSON.stringify(data);
							var jsonObj = JSON.parse(objStr);
							var values = $("#category_search").html();
							
							for(var i in jsonObj.list){
								values += "<li>" + jsonObj.list[i].category + "</li>"
							}
							$("#category_search").html(values);
						},
						error: function(request, status, errorData){
							console.log("error code : " + request.status + "\n message : " + request.response + 
									"\n error : " + errorData);
						}
					});
					
					$.ajax({
						url: "newStudy.do",
						type: "post",
						dataType: "json",
						success: function(data){
							var objStr = JSON.stringify(data);
							var jsonObj = JSON.parse(objStr);
							var values = $("#newStudy").html();;
							for(var i in jsonObj.list){
								values+= "<div class='topbox' align='center' style='margin-left: 1em;'><a href='#'><img style='width: 200px; height: 200px;' src='resources/images/pic01.jpg'><br>" + jsonObj.list[i].study_name + "</a></div>"
							}
							$("#newStudy").html(values);
						},
						error: function(request, status, errorData){
							console.log("error code : " + request.status + "\n message : " + request.response + 
									"\n error : " + errorData);
						}
					});
					
				});
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
								<li class="current"><a href="studymain.do?page=1">스터디</a></li>
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
											<h3 style="padding-left: 6px;">마이페이지</h3>
											<hr style="border: 2px solid #37c0fb; width:90%; margin-left: 0;">
											<ul class="alt">
												<li style="padding-top: 15px; padding-left: 6px;"><a>개인정보 수정</a></li>
												<li style="padding-left: 6px;"><a> 패스워드 변경</a></li>
												<li style="padding-left: 6px;"><a> 마이스터디</a></li>
												<li></li>
											</ul>
										</div>

								</div>
							</div>
							<div class="col-9 col-12-narrower imp-narrower">
								<div class="topbox">
									<h3 style="margin-bottom: 2em;">인기 카테고리</h3>
									<ol id="category_search"></ol>
								</div>
								<div id="newStudy" class="topbox" style="margin-left: 10em;">
									<h3>최근생성 스터디</h3>
								</div>
								<div>
									<form action="studySearch.do" style="margin-top: 22em;">
										<select style="float: left;height: 40px; width: 57px; padding: 3px; ">
											<option value="전체" selected="selected">전체</option>
											<option value="대입">대입</option>
											<option value="고입">고입</option>
											<option value="취업">취업</option>
											<option value="어학">어학</option>
											<option value="자격증">자격증</option>
											<option value="고시">고시</option>
											<option value="기타">기타</option>
										</select>
										<input type="text" autocomplete="on" placeholder="스터디명을 입력해주세요" style="width: 500px; height: 40px; float: left;" />
										<input type="submit" value="검색" style="min-width: 40px; min-height: 40px;" />
									</form>
								</div>
								<div>
									<table>
										<c:choose>
											<c:when test="${ fn:length(list) > 0 }">
												<c:forEach items="${list }" var="study">
													<tr></tr>
												</c:forEach>
											</c:when>
										</c:choose>
										
									</table>
								</div>
							</div>

							<div class="col-1 col-12-narrower" style="padding-left: 50px;">
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
<c:import url="../common/footer.jsp" />
	</body>
</html>