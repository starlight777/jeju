<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.course.model.CourseDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../template/head.jspf" %>
<style rel="stylesheet" type="text/css">

</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">

</script>

<style type="text/css">
	#content table{
		border-collapse: collapse;
	}
	#content table tr{
	}
	#content table tr th{
		border: 1px solid grey;
	}
	#content table tr td{
		border: 1px solid grey;
	}
</style>
</head>

<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>

<h2>교육과정</h2>

<table width="500" cellpadding="0" cellspacing="0" border="1">

	<tr>
		<th>강의번호</th>
		<th>강좌명</th>
		<th>개강일</th>
		<th>종강일</th>
	</tr>
	
	<%
	ArrayList<CourseDto> list=(ArrayList<CourseDto>)request.getAttribute("list");
		for(CourseDto bean:list){
	%>	
	<tr>
			<td><%=bean.getCno() %></td>
			<td><a href="opencourse/detail.bit?idx=<%=bean.getCno() %>"><%=bean.getCtitle() %></a></td>
			<td><%=bean.getCbegin() %></td>
			<td><%=bean.getCend() %></td>			
	</tr>
		<%} %>
			
</table>

<%-- 페이지 추가 --%>



<%@ include file="../template/footer.jspf" %>
</body>
</html>