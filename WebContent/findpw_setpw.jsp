<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 회원가입</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
</style>
<script type="text/javascript">
	$(document).ready(function() {
		document.getElementById('goLogin').addEventListener('click', function() {
			location.href = "/jeju/login.bit";
		});
	});
</script>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
		<div>
			<h2>비밀번호 찾기</h2>
			<p><%= request.getParameter("id") %>님의 새 비밀번호가 설정되었습니다.</p>
			<p>새로운 비밀번호로 로그인하세요.</p>
		</div>
		<div>
			<button type="button" id="goLogin">로그인하기</button>		
		</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>