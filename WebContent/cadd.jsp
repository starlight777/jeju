<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf" %>
<script type = "text/javascript" src = "js/jquery-1.12.4.js" ></script>
<style type="text/css">
<<<<<<< HEAD
=======
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
table{
	text-align: center;
	margin-left: 450px;
	border-collapse: collapse;
	border : 1px solid black;
	width: 500px;
		
}

table>tbody>tr{
	height : 50px;
}

table>tbody>tr>th{
	text-align: left;

}

table+div {
	margin-left : 793px;
	margin-top : 30px;
}


#footer {
	text-align: center;
	background-color: gray;
}
>>>>>>> course3
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>교육과정추가 페이지</h2>
	<form method = "post">
		<div>
			<label for = "ctitle">강좌명</label>
			<input type = "text" name = "ctitle" id = "ctitle"/>
		</div>
		<div>
			<label for = "croom">강의실</label>
			<input type = "text" name = "croom" id = "croom"/>
		</div>
		<div>
			<label for = "cbegin">개강일</label>
			<input type = "date" name = "cbegin" id = "cbegin"/>
		</div>	
		<div>
			<label for = "cend">종강일</label>
			<input type = "date" name = "cend" id = "cend"/>
		</div>
<<<<<<< HEAD
		<div>
			<label for = "profno">강사</label>
			<input type = "text" name = "profno" id = "profno"/>
=======
		<div id = "content">
			<h2>교육과정추가 페이지</h2>
			<form method = "post">
			<table>
				<tr>
					<th>
					<label for = "ctitle">강좌명</label>
					<input type = "text" name = "ctitle" id = "ctitle"/>
					</th>
				</tr>
				<tr>
					<th>
					<label for = "croom">강의실</label>
					<input type = "text" name = "croom" id = "croom"/>
					</th>
				</tr>
				<tr>
					<th>
					<label for = "cbegin">개강일</label>
					<input type = "date" name = "cbegin" id = "cbegin"/>
					</th>
				</tr>
				<tr>
					<th>
					<label for = "cend">종강일</label>
					<input type = "date" name = "cend" id = "cend"/>
					</th>
				</tr>
				<tr>
					<th>
					<label for = "profno">강사</label>
					<input type = "text" name = "profno" id = "profno"/>
					</th>
				</tr>			
				<tr>
					<th>
					<label for = "salesno">영업사원</label>
					<input type = "text" name = "salesno" id = "salesno"/>
					</th>
				</tr>	
			</table>		
				<div>
					<input type = "submit" value="입력완료"/>
					<input type = "reset" value="취소"/>
					<input type = "button" value="뒤로가기" onclick="history.back();"/>
				</div>
			</form>
>>>>>>> course3
		</div>
		<div>
			<label for = "salesno">영업사원</label>
			<input type = "text" name = "salesno" id = "salesno"/>
		</div>
		<div>
			<input type = "submit" value="입력완료"/>
			<input type = "reset" value="취소"/>
			<input type = "button" value="뒤로가기" onclick="history.back();"/>
		</div>
	</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>