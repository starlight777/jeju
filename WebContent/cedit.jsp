<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
<<<<<<< HEAD

	#content table{
		margin-top: 100px;
		margin-left: 300px;
		width: 600px;
	}
	
	table+div {
		margin-left: 655px;
		margin-top: 30px;		
		width: 300px;
	}

	table tr>th{
		width:100px;
	}
	
	table tr>td{
		width:300px;
		text-align: left;
	}
	

=======
.linkclick{
	height: 40px;
}
#content form table input{
	border: none;
	font-size: 16px;
	font-family: arial;
	background-color: #ffffff00;
	color: #81d8d0;
}
#content table td{
	padding: 0 30px;
	text-align: left;
}
>>>>>>> fbc285131a34f1608c18665a20d9cc181da73493
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<jsp:useBean id = "cedit" class = "com.bit.course.model.CourseDto" scope="request"></jsp:useBean>		
<<<<<<< HEAD
=======
<h2>교육과정 수정</h2>
>>>>>>> fbc285131a34f1608c18665a20d9cc181da73493
<form method = "post">
	<table>
		<tr>
			<th><label for = "cno">강의번호</label></th>
			<td><input type = "text" name = "cno" id = "cno" value = "<jsp:getProperty property= "cno"  name = "cedit"/>" readonly></tr>
		</tr>
		<tr>
			<th><label for = "ctitle">강좌명</label></th>
			<td><input type = "text" name = "ctitle" id = "ctitle" style = "width:400px;" value = "<jsp:getProperty property= "ctitle"  name = "cedit"/>" ></td>
		</tr>
		<tr>
			<th><label for = "cbegin">개강일</label></th>
			<td><input type = "date" name = "cbegin" id = "cbegin" value = "<jsp:getProperty property= "cbegin"  name = "cedit"/>" ></td>
		</tr>
		<tr>
			<th><label for = "cend">종강일</label></th>
			<td><input type = "date" name = "cend" id = "cend" value = "<jsp:getProperty property= "cend"  name = "cedit"/>" ></td>
		</tr>
		<tr>
			<th><label for = "croom">강의실</label></th>
			<td><input type = "text" name = "croom" id = "croom" value = "<jsp:getProperty property= "croom"  name = "cedit"/>" ></td>
		</tr>										
		<tr>
			<th><label for = "profno">강사</label></th>
			<td><input type = "text" name = "profno" id = "profno" value = "<jsp:getProperty property= "profno"  name = "cedit"/>" ></td>
		</tr>	
		<tr>
			<th><label for = "salesno">영업사원</label></th>
			<td><input type = "text" name = "salesno" id = "salesno" value = "<jsp:getProperty property= "salesno"  name = "cedit"/>" ></td>
		</tr>									
	</table>										
	<div>
		<input class="linkclick" type = "submit" value="입력완료"/>
		<input class="linkclick" type = "reset" value="취소"/>
		<input class="linkclick" type = "button" value="뒤로가기" onclick="history.back();"/>
	</div>
</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>