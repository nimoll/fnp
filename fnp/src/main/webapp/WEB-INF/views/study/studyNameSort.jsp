<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
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
			.tab { float:left; border-right: 1px dashed #ddd; width: 25%; text-align: center; padding: 15px 0 15px 0; margin: 20px 0 20px 0; background-color: #eee;}
			.tab:hover { cursor: pointer;}
			.tabcontent { clear: left; padding-top: 20px; margin: 0 10px 0 10px; display: none; }
			
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
					
					$('ul.tabs li').click(function(){
						var tab_id = $(this).attr('data-tab');

						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');

						$(this).addClass('current');
						$("#"+tab_id).addClass('current');
					})
					
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
								values+= "<div class='topbox' align='center' style='margin-left: 1em;'><a href='studyJoinDetail.do?study_no="
									+ jsonObj.list[i].study_no + "'><img style='width: 200px; height: 160px;' src='resources/images/pic01.jpg' onmouseover='this.src=\"resources/images/zz.png\"' onmouseout='this.src=\"resources/images/pic01.jpg\"'/><br>" + jsonObj.list[i].study_name + "</a></div>"
							}
							$("#newStudy").html(values);
						},
						error: function(request, status, errorData){
							console.log("error code : " + request.status + "\n message : " + request.response + 
									"\n error : " + errorData);
						}
					});
					
				});
				
				function opentab(pageName, elmnt) {
					switch(pageName){
					case 'newStudy':
						location.href="studymain.do";
						break;
					case 'currentCount':
						location.href="studyCount.do"
						break;
					case 'studyName':
						location.href="studyName.do"
						break;
					};					
				}
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
											<form action="studyName.do" method="post">
												<table>
													<tr>
														<td style="background: #F5F6F9; font-size: 20px; border: 1px solid #F5F5F9;">&nbsp;&nbsp;상세검색</td>
													</tr>
													<tr>
														<td style="background: #FAFAFA;">
															<br>&nbsp;&nbsp;카테고리
															<select name="category" style="width: 120px; height: 20px;">
																<option>전체</option>
																<option>대입</option>
																<option>고입</option>
																<option>취업</option>
																<option>어학</option>
																<option>자격증</option>
																<option>고시</option>
																<option>기타</option>
															</select><br>
														</td>
													</tr>
													<tr>
														<td style="background: #FAFAFA;">
														&nbsp;&nbsp;옵션
														<input type="text" name="searchName" placeholder="제목입력" style="width: 150px; font-size: 15px;"><br>
														</td>
													</tr>
													<tr>
														<td>
															<input type="submit" value="스터디검색" style="background-color: #6c6c6c;">
														</td>
													</tr>
												</table>
											</form>	
										</div>

								</div>
							</div>
							<div class="col-8 col-12-narrower imp-narrower">
								<div class="topbox">
									<h3 style="margin-bottom: 2em;">인기 카테고리</h3>
									<ol id="category_search"></ol>
								</div>
								<div id="newStudy" class="topbox" style="margin-left: 5em; margin-bottom: 6em;">
									<h3>최근생성 스터디</h3>
								</div>
									<!-- tab -->
									<div class="tab" onclick="opentab('newStudy', this);" >최근등록순</div>
									<div class="tab" onclick="opentab('currentCount', this);" >참여높은순</div>
									<div class="tab" onclick="opentab('studyName', this);" style="background-color: #37c0fb; color: white;">제목순정렬</div>
									
									<!-- 최근등록순 뷰 -->
									<div id="newStudy" class="tabcontent">

									</div>
									
									<!-- 참여자 높은순 뷰 -->
									<div id="currentCount" class="tabcontent" >
										
										
									</div>
											
									<!-- 제목순정렬 뷰 -->
									<div id="studyName" class="tabcontent" style="display: block;">
										<table>
											<c:choose>
												<c:when test="${ fn:length(list) > 0 }">
													<c:forEach items="${list }" var="study" varStatus="status">
													<c:if test="${status.index % 4 eq 0 }">
														<tr align="center">
													</c:if>
													
														<c:url var="studyDetail" value="studyJoinDetail.do">
																<c:param name="study_no" value="${study.study_no }" />	
														</c:url>
														
															<td class="imgswap" style="position: relative; border-bottom: 1px solid #defe5; margin-right: 1em;">
																<a href="${studyDetail }">
																	<img style="width: 200px; height: 160px;" src="resources/images/pic01.jpg" onmouseover="this.src='resources/images/zz.png'" onmouseout="this.src='resources/images/pic01.jpg'"/>
																	<p style="font-size: 20px; margin-bottom: 0;">${study.study_name }</p><br>
																	<c:if test="${study.limit_age eq 0 }">
																		<p style="font-size:15px; color:gray; margin-bottom: 0;">나이제한: 없음</p>
																	</c:if>
																	<c:if test="${study.limit_age ne 0 }">
																		<p style="font-size:15px; color:gray; margin-bottom: 0;">나이제한: ${study.limit_age }세 이상</p>
																	</c:if>
																	<c:if test="${!empty study.LIMIT_GENDER }">
																		<p style="font-size:15px; color:gray">성별제한: ${study.LIMIT_GENDER }</p>
																	</c:if>
																	<c:if test="${empty study.LIMIT_GENDER }">
																		<p style="font-size:15px; color:gray">성별제한: 없음</p>
																	</c:if>
																	
																</a>
															</td>
															
															<c:if test="${(status.index ne 0) && (status.index eq 3 or status.index eq 7) }">
																</tr>
															</c:if>
															
													</c:forEach>
													
													
												</c:when>
												<c:otherwise>
													<tr><td>조회된 결과가 없습니다.</td></tr>
												</c:otherwise>
											</c:choose>
											
										</table>
								
										<!-- 페이징 처리 -->
										<div style="text-align: center">
											<c:url var="first" value="studyName.do">
												<c:param name="page" value="1" />
											</c:url>
											<a href="${first }">[맨처음]</a>&nbsp;
											<c:url var="prev" value="studyName.do">
												<c:param name="page" value="${startPage - limit }" />
											</c:url>
											<a href="${prev }">[이전]</a>&nbsp;
											<c:forEach var="p" begin="${startPage }" end="${endPage }" step="1">
												<c:url var="move" value="studyName.do">
													<c:param name="page" value="${p }" />
												</c:url>
												<c:if test="${p eq currentPage }">
													<b style="color: red;">[${p }]</b>
												</c:if>
												<c:if test="${p ne currentPage }">
													<a href="${move }">[${p }]</a>&nbsp;
												</c:if>
											</c:forEach>
											<c:url var="next" value="studyName.do">
												<c:param name="page" value="${endPage - limit }" />
											</c:url>
											<a href="${next }">[next]</a>&nbsp;
											<c:url var="last" value="studyName.do">
												<c:param name="page" value="${maxPage }" />
											</c:url>
											<a href="${last }">[맨끝]</a>
										</div>
									</div>
									<div style="clear:left; height: 40px;"></div>
								
							</div>

							<div class="col-2 col-12-narrower">
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