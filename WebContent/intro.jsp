<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
<script type="text/javascript">

</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

	<h2>제주점 소개</h2>
	
		<div><img src="<%=root %>/img/intro01.jpg" /></div>
        <div><img src="<%=root %>/img/intro02.jpg" /></div>

	<h2>강사진</h2>
		<div><img src="<%=root %>/img/intro03.jpg" /></div>
        <div><img src="<%=root %>/img/intro04.jpg" /></div>
        <div><img src="<%=root %>/img/intro05.jpg" /></div>

	<h2>찾아오시는 길</h2>
		<div><img src="<%=root %>/img/intromap.jpg" /></div>
		<p>주소			비트캠프 제주특별자치도 서귀포시 강정동 736</p>
		<p>대표전화		064-123-4567</p>
		<p>버스			1000, 2000, 3000</p>

</body>
</html>