<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점</title>
<%@ include file="template/head.jspf" %>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<div id="content">
		<h2>계정을 삭제했습니다. <%= request.getParameter("name") %></h2>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>

</html>