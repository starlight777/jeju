<<<<<<< HEAD
<%@page import="com.bit.course.model.CourseDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
=======
<%@page import="com.bit.courses.model.CourseDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
>>>>>>> course3
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf" %>
<script type = "text/javascript" src = "js/jquery-1.12.4.js" ></script>
<style type="text/css">
</style>
</head>
<body>
<<<<<<< HEAD
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>과정삭제 완료페이지</h2>	
	<div><%=request.getParameter("ctitle")%>반이 삭제 되었습니다.</div>
	<div>
		<button type = "button" onclick="location.href='courses.bit'">홈으로 가기</button>
=======
	<div class="bit">
		<div id="header">
			<ul>
				<li><a href="#">강사 설민석님 로그인중</a></li>
				<li><a href="#">로그아웃</a></li>
				<li><a href="#">LMS</a></li>
			</ul>
		</div>
		<div id="menu">
			<ul>
				<li><a href="#">홈</a></li>
				<li><a href="#">학원소개</a></li>
				<li><a href="#">교육과정</a></li>
				<li><a href="#">공지사항</a></li>
			</ul>
		</div>
		<div id="section">
			<ul>
				<li><a href="#">회원정보</a></li>
				<li><a href="#">내업무</a></li>
				<li><a href="courses.bit">전체과정</a></li>
				<li><a href="#">전체학생</a></li>
				<li><a href="#">직원정보</a></li>
				<li><a href="#">공지사항관리</a></li>
			</ul>
		</div>
		<div id = "content">
			<h2>과정삭제 완료페이지</h2>	
		<div>
		<%=request.getParameter("ctitle")%>반이 삭제 되었습니다.</div>
		<div>
<button type = "button" onclick="location.href='courses.bit'">홈으로 가기</button>
		</div>
		</div>
		<div id="footer">
			<address>비트캠프 제주특별자치도 서귀포시 강정동 736</address>
			(주)비트컴퓨터 제주점<br /> Copyright &copy; 비트캠프 All rights reserved.
		</div>
>>>>>>> course3
	</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>