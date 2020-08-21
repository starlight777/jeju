<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elogin</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<h2>LMS로그인 페이지</h2>
<form method="post">
	<div>
		<label for="eno">사번</label>
		<input type="text" name="eno" id="eno"/>
	</div>
	<div>
		<label for="pw">비밀번호</label>
		<input type="text" name="pw" id="pw"/>
	</div>
	<div>
		<input type="submit" value="로그인" />
		<input type="reset" value="취소" />
	</div>
</form>


<%@ include file="template/footer.jspf" %>
</body>
</html>