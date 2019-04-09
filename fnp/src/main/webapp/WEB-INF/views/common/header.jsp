<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final</title>
<style type="text/css">
	a {
		color : black;
		border-bottom: 0;
	}
	.menu li { font-size: 10.5pt; }
</style>
</head>
<body>
<c:if test="${empty loginMember  }">
	<div style="position: absolute; right: 12em;">
		<ul class="menu">
			<li><a>로그인</a></li>
			<li><a>회원가입</a></li>
		</ul>
	</div>
</c:if>
<c:if test="${!empty loginMember }">
	<div style="position: absolute; right: 12em;">
		<ul class="menu">
			<li>${ loginMember.userid } 님 환영합니다.</li>
			<li><a>마이페이지</a></li>
			<li><a>로그아웃</a></li>
		</ul>
	</div>
</c:if>
<br>
<div id="top" align="center"><a href="main.do"><img src="resources/images/mainlogo.png" style="width: 14%; height: 14%; padding-bottom: 30px;"></a></div>
</body>
</html>