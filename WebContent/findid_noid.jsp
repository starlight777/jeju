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
		document.getElementById('gofindid').addEventListener('click', function() {
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
			<h2>아이디 찾기</h2>
			<p>입력한 정보와 일치하는 아이디를 찾지 못했습니다.</p>
		</div>
		<div>
			<button type="button" id="gofindid">아이디 다시 찾기</button>		
		</div>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>