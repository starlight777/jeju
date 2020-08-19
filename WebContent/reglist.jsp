<%@page import="com.bit.course.model.SalesCourseDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List,com.bit.courses.model.CoursesDto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<link rel="stylesheet" type="text/css" href="/jeju/css/frame.css"/>
<script type="text/javascript" src="/jeju/js/jquery-1.12.4.js"></script>
<style type="text/css">
	#section {
		width: 15%;
		height: 80%;
		float: left;
		display: inline-block;
		background-color: white;
		border: 1px solid black;
	}
	
	#section>ul {
		list-style: none;
	}
	
	#section>ul>li {
		margin: 10px;
		margin-top: 30px;
		margin-bottom: 40px;
		text-align: center;
	}
	
	#section>ul>li>a {
		color: black;
		margin: 0px auto;
		display: inline-block;
		text-decoration: none;
		text-align: center;
		line-height: 40px;
		height: 40px;
		width: 70%;
		border-radius: 10px;
		border: 1px solid black;
		font-size: 14px;
	}
	
	#section>ul>li>a:hover {
		border: 1px solid pink;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
		
	});
</script>

</head>
<body>
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
		<div id="content">
			<h2>수강신청현황</h2>
			<div>
			<% 
			ArrayList<SalesCourseDto> list = (ArrayList<SalesCourseDto>) request.getAttribute("list"); 
			for(SalesCourseDto bean : list) {
			%>
			<div><a href="/jeju/lms/courses/assign.bit?cno=<%= bean.getCno() %>"><%= bean.getCno() %>, <%= bean.getCtitle() %>, <%= bean.getCbegin() %>, <%= bean.getClimit() %>, <%= bean.getStdcnt() %></a></div>
			<%
			}
			%>
			</div>
		</div>
		<div id="footer">
			<address>비트캠프 제주특별자치도 서귀포시 강정동 736</address>
			(주)비트컴퓨터 제주점<br /> Copyright &copy; 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>