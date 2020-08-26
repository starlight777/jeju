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
		document.getElementById('goAnswer').addEventListener('click', function() {
			history.back();
		});
	});
</script>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	<div id="content">
		<div>
			<h2>비밀번호 찾기</h2>
			<p>올바른 답이 아닙니다. 다시 입력하세요.</p>
		</div>
		<div>
			<button type="button" id="goAnswer">다시 입력하기</button>		
		</div>
		<div>
			<p>답이 기억나지 않는다면 학원에 문의하세요.</p>
		</div>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>