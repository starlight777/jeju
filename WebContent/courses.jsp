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
$(document).ready(function() {
		$('table tr>td:nth-child(2)').click(function() {
			var cno = $(this).siblings().first().text();
			location.href = 'course.bit?idx=' + cno;
		});
	});
/* 	$(document).ready(function(){
		$('table tr').first().siblings().click(function(){
			var cno=$(this).children().first().text();
			location.href = 'course.bit?idx='+cno;
		});
	});
*/
</script>

</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<%
	 final int ROWSIZE = 10;
	 final int BLOCK = 5;
	 
	 int pg = 1;
	 
	 if(request.getParameter("pg")!=null) {
		 	pg = Integer.parseInt(request.getParameter("pg"));
	 }
	 
	 int start = (pg+ROWSIZE) - (ROWSIZE-1);
	 int end = (pg+ROWSIZE);
	 
	 int allPage = 0;
	 
	 int startPage = ((pg-1) / BLOCK * BLOCK)+1;
	 int endPage = ((pg-1) / BLOCK * BLOCK)+BLOCK;
%>
<h2>전체과정 페이지</h2>
<table>
	<tr>
		<th>강의번호</th>
		<th>강좌명</th>
		<th>개강일</th>
		<th>종강일</th>
	</tr>
	<%
		List<CoursesDto> list = (List<CoursesDto>) request.getAttribute("courses");
		for (CoursesDto bean : list) {
	%>
	<tr>
		<td><%=bean.getCno()%></td>
		<td><a href ="<%=root %>/lms/courses/course.bit?idx=<%=bean.getCno()%>"><%=bean.getCtitle()%></a></td>
		<td><%=bean.getCbegin()%></td>
		<td><%=bean.getCend()%></td>
	</tr>
	<%
		}
	%>
</table>
	<button type = "button" onclick="location.href = 'cadd.bit'">과정추가</button>
	<button type = "button" onclick="location.href = '#'">수강신청관리</button>
<%@ include file="template/footer.jspf" %>
</body>
</html>