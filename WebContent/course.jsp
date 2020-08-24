<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<script type = "text/javascript" src = "js/jquery-1.12.4.js" ></script>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;

}

.bit, #header #section #content #footer {
	width: 1920px;
	height: 1080px;
	position:absolute;
	
}

#header {
	background-image: url("img/logo.png");
	background-repeat: no-repeat;
	background-position: left;
	background-color: gray;
	height: 88px;
	padding: 5px;
}

#header>ul {
	margin-left: 80%;
}

#header>ul>li {
	display: inline-block;
}

#header>ul>li>a {
	text-decoration: none;
	margin: 15px;
	color: white;	
	font-size: 12px;
}

#menu {
	height: 80px;
	text-align: center;
	background-color: darkgray;
}

#menu>ul {
	list-style: none;
	display: inline-block;
}

#menu>ul>li {
	float: left;
	margin: 20px;
}

#menu>ul>li>a {
	display: inline-block;
	line-height: 40px;
	color: black;
	text-decoration: none;
	text-align: center;
	border-radius: 10px;
	border: 1px solid black;
	font-size: 14px;
	width: 150px;
}

#menu>ul>li>a:hover {
	border: 1px solid pink;
}

#section {
	width: 15%;
	height: 80%;
	float:left;
	display: inline-block;
	background-color: white;
	border:1px solid black;
	
}

#section>ul {
	list-style: none;
}

#section>ul>li {
	margin: 10px;
	margin-top:30px;	
	margin-bottom: 40px;
	text-align: center;
	
}

#section>ul>li>a {
	color: black; 
	margin : 0px auto;
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

#content {
	height:80%;
	width:100%;
	background-color: white;
	border:1px solid black;
}

h2 {
	margin: 100px;
	margin-left: 400px;
}

table{
	text-align: center;
	margin-left: 450px;
	border-collapse: collapse;
	
}

table>tbody>tr{
	border:1px solid black;
	
}

table>tbody>tr>th{
	border: 1px solid black;
	width:80px;
	
}

table>tbody>tr>td{
	border: 1px solid black;	
	width: 600px;
	
}

button{
	width: 100px;
	margin-top: 40px;
	margin-left: 20px;
	position: relative;
	left: 473px;
}

#footer {
	text-align: center;
	background-color: gray;
}
</style>
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
		<div id = "content">
<jsp:useBean id = "course" class = "com.bit.courses.model.CourseDto" scope = "request"/>
			<h2>교육과정 디테일 페이지</h2>
			<table>
				<tr>
					<th>강의번호</th>
					<td><jsp:getProperty property="cno" name="course"/></td>
				</tr>
				<tr>
					<th>강좌명</th>
					<td><jsp:getProperty property="ctitle" name="course"/></td>
				</tr>
				<tr>
					<th>개강일</th>
					<td><jsp:getProperty property="cbegin" name="course"/></td>
				</tr>
				<tr>
					<th>종강일</th>
					<td><jsp:getProperty property="cend" name="course"/></td>
				</tr>
				<tr>
					<th>수업일수</th>
					<td><jsp:getProperty property="cdays" name="course"/></td>
				</tr>
				<tr>
					<th>정원</th>
					<td><jsp:getProperty property="climit" name="course"/></td>
				</tr>
				<tr>
					<th>강의실</th>
					<td><jsp:getProperty property="croom" name="course"/></td>
				</tr>
				<tr>
					<th>강사</th>
					<td><jsp:getProperty property="prof" name="course"/></td>
				</tr>
				<tr>
					<th>영업사원</th>
					<td><jsp:getProperty property="salesno" name="course"/></td>
				</tr>
			</table>
			<button type = "button" onclick="location.href = 'cedit.bit?idx=<%=course.getCno()%>'">수정</button>
			<button type = "button" onclick="location.href = 'cdel.bit?cno=<%=course.getCno()%>&ctitle=<%=course.getCtitle() %>'">삭제</button>
			<button type = "button" onclick="history.back();">뒤로가기</button>
		</div>
		<div id="footer">
			<address>비트캠프 제주특별자치도 서귀포시 강정동 736</address>
			(주)비트컴퓨터 제주점<br /> Copyright &copy; 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>