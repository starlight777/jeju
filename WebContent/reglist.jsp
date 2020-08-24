<%@page import="com.bit.course.model.SalesCourseDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List,com.bit.course.model.CoursesDto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>

<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>수강신청현황</h2>
	<% 
	ArrayList<SalesCourseDto> list = (ArrayList<SalesCourseDto>) request.getAttribute("list"); 
	for(SalesCourseDto bean : list) {
	%>
	<div>
		<a href="/jeju/lms/courses/assign.bit?cno=<%= bean.getCno() %>"><%= bean.getCno() %>, <%= bean.getCtitle() %>, <%= bean.getCbegin() %>, <%= bean.getClimit() %>, <%= bean.getStdcnt() %></a>
	</div>
	<%
	}
	%>
<%@ include file="template/footer.jspf" %>
</body>
</html>