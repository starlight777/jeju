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
		document.getElementById('gologin').addEventListener('click', function() {
			location.href = 'login.bit';
		});
	});
</script>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	<div id="content">
		<div>
			<h2>아이디 찾기</h2>
			<p>${foundid_name } 님의 아이디는 </p>
			<p>${foundid_id }입니다.</p>
		</div>
		<div>
			<div>
				<button type="button" id="gologin">로그인하기</button>
			</div>
			<div>
				<span><a href="/jeju/login/findpw/answer.bit?id=${foundid_id }" id="gofindpw">비밀번호 찾기</a></span>
			</div>
		</div>
	</div>
	<% 
	session.removeAttribute("foundid_name");	
	session.removeAttribute("foundid_id");	
	%>
	<%@ include file="template/footer.jspf" %>
</body>
</html>