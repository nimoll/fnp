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
         <style>
            .row > .col-4 {
                  width: 20%;
               }
            *{
               list-style: none;   
            }
         </style>
         
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
                        <li class="current"><a href="introduce.do">소개</a></li>
                        <li><a href="studymain.do?page=1">스터디</a></li>
                        <li><a href="userstudy.do">개인공부 관리</a></li>
                        <li><a href="notice.do">공지사항</a></li>
                     </ul>
                  </nav>
            </div>

         <!-- Main -->
            <section class="wrapper style1">
               <div class="container">
                  <div id="content">

                     <!-- Content -->

                        <article>
                           <header>
                              <h2 style = "text-align:center;">ABOUT US</h2>
                              <p></p>
                           </header>

                           <span class="image featured"><img src="resources/images/intro/in2.png" alt="" /></span>
                           <div class="container">
                              <h3>팀원 소개</h3><br>
                              <div class = "row gtr-200">
                                 <section class="col-4 col-12-narrower">
                                    <div class = "box highlight">
                                       <img src="resources/images/intro/people.png" style = "border-radius: 50%; width : 128px; height:128px;">
                                       <p>엄마담당<br/>(감독)</p>
                                    </div>
                                 </section>
                                 <section class="col-4 col-12-narrower">
                                    <div class = "box highlight">
                                       <img src="resources/images/intro/people.png" style = "border-radius: 50%; width : 128px; height:128px;">
                                       <p>아빠담당</p>
                                    </div>
                                 </section>
                                 <section class="col-4 col-12-narrower">
                                    <div class = "box highlight">
                                       <img src="resources/images/intro/people.png" style = "border-radius: 50%; width : 128px; height:128px;">
                                       <p>잡소리담당</p>
                                    </div>
                                 </section>
                                 <section class="col-4 col-12-narrower">
                                    <div class = "box highlight">
                                       <img src="resources/images/intro/people.png" style = "border-radius: 50%; width : 128px; height:128px;">
                                       <p>뒷바라지담당</p>
                                    </div>
                                 </section>
                                    <section class="col-4 col-12-narrower">
                                       <div class = "box highlight">
                                       <img src="resources/images/intro/people.png" style = "border-radius: 50%; width : 128px; height:128px;">   
                                       <p>스캔담당</p>
                                    </div>
                                 </section>
                              </div>
                           </div>
                        </article>
                        
                        <!-- Posts -->
            <section class="wrapper style1">
               <div class="container">
                  <div class="row">
                     <section class="col-6 col-12-narrower">
                        <div class="box post">
                           <a href="#" class="image left"><img src="resources/images/pic01.jpg" alt="" /></a>
                           <div class="inner">
                              <h3>스터디</h3>
                              <p style = "font-size : 20px;">지금 이 글을 일고 계신 바로 당신도 그룹<br/>운영에 참여 가능합니다. 그룹을 맡아서 운영해보고 싶으신 분들은 "모임 신청"에서 신청해주세요</p>
                           </div>
                        </div>
                     </section>
                     <section class="col-6 col-12-narrower">
                        <div class="box post">
                           <a href="#" class="image left"><img src="resources/images/pic02.jpg" alt="" /></a>
                           <div class="inner">
                              <h3>The Second Thing</h3>
                              <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                           </div>
                        </div>
                     </section>
                  </div>
                  <div class="row">
                     <section class="col-6 col-12-narrower">
                        <div class="box post">
                           <a href="#" class="image left"><img src="resources/images/pic03.jpg" alt="" /></a>
                           <div class="inner">
                              <h3>The Third Thing</h3>
                              <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                           </div>
                        </div>
                     </section>
                     <section class="col-6 col-12-narrower">
                        <div class="box post">
                           <a href="#" class="image left"><img src="resources/images/pic04.jpg" alt="" /></a>
                           <div class="inner">
                              <h3>The Fourth Thing</h3>
                              <p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>
                           </div>
                        </div>
                     </section>
                  </div>
               </div>
            </section>
                  </div>
               </div>
            </section>
      </div>
   
      <c:import url="common/footer.jsp" />
   </body>
</html>