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

#content>h2 {
	margin: 100px;
	margin-left: 400px;
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
<jsp:useBean id = "cedit" class = "com.bit.courses.model.CourseDto" scope="request"></jsp:useBean>		
			<h2>과정수정 페이지</h2>
			<form method = "post">
				<div>
					<label for = "cno">강의번호</label>
<input type = "text" name = "cno" id = "cno" value = "<jsp:getProperty property= "cno"  name = "cedit"/>" readonly>
				</div>
				<div>
					<label for = "ctitle">강좌명</label>
<input type = "text" name = "ctitle" id = "ctitle" value = "<jsp:getProperty property= "ctitle"  name = "cedit"/>" >
				</div>
				<div>
					<label for = "cbegin">개강일</label>
<input type = "date" name = "cbegin" id = "cbegin" value = "<jsp:getProperty property= "cbegin"  name = "cedit"/>" >
				</div>			
				<div>
					<label for = "cend">종강일</label>
<input type = "date" name = "cend" id = "cend" value = "<jsp:getProperty property= "cend"  name = "cedit"/>" >
				</div>					
				<div>
					<label for = "croom">강의실</label>
<input type = "text" name = "croom" id = "croom" value = "<jsp:getProperty property= "croom"  name = "cedit"/>" >
				</div>
				<div>
					<label for = "profno">강사</label>
<input type = "text" name = "profno" id = "profno" value = "<jsp:getProperty property= "profno"  name = "cedit"/>" >
				</div>	
				<div>
					<label for = "salesno">영업사원</label>
<input type = "text" name = "salesno" id = "salesno" value = "<jsp:getProperty property= "salesno"  name = "cedit"/>" >
				</div>								
				<div>
					<input type = "submit" value="입력완료"/>
					<input type = "reset" value="취소"/>
					<input type = "button" value="뒤로가기" onclick="history.back();"/>
				</div>
			</form>
		</div>
		<div id="footer">
			<address>비트캠프 제주특별자치도 서귀포시 강정동 736</address>
			(주)비트컴퓨터 제주점<br /> Copyright &copy; 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>