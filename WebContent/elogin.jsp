<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elogin</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
#content table{
	width: 300px;
	text-align: left;
}
#content table tr{
	border: none;
}
#content table tr th{
	width: 100px;
	text-align: left;
	background-color: white;
	border: none;
}
#content table tr td{
	width: 200px;
	text-align: left;
	background-color: white;
	border: none;
}
#errid,#errpw{
	color: #81d8d0;
}
#btnlogin{
	width: 320px;
}
#content label{
	width: 100px;
	height: 50px;
	font-size: 20px;
	text-align: left;
}
#eno,#pw{
  	border: none;
 	background-color: #81d8d04a;
}
#content input{
 	width: 200px;
 	height: 40px;
 	font-size: 20px;
}
#content input:focus{outline:none;}
#content span>a{
}
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<h2>LMS로그인 페이지</h2>
<form method="post">
	<table>
		<tr>
			<th><label for="eno">사번</label></th>
			<td><input type="text" name="eno" id="eno"/></td>
		</tr>
		<tr>
			<th><label for="pw">비밀번호</label></th>
			<td><input type="text" name="pw" id="pw"/></td>
		</tr>
		<tr>
		</tr>
	</table>
	<input class="linkclick" type="submit" value="로그인" />
	<input class="linkclick" type="reset" value="취소" />
</form>

<%@ include file="template/footer.jspf" %>
</body>
</html>