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
		<div>
			<label for = "profno">강사</label>
			<input type = "text" name = "profno" id = "profno"/>
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