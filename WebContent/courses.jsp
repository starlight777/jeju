<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List,com.bit.course.model.CoursesDto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf"%>
<script type="text/javascript" src="<%=root%>/js/jquery-1.12.4.js"></script>
<style type="text/css">
#content table {
	margin-top: 100px;
	margin-left: 120px;
}

table+div {
	width: 300px;
	margin-left: 1095px;
	margin-top: 30px;
}

table tr th {
	width: 150px;
}

table tr>td:nth-child(2) {
	color: black;
	text-decoration: underline;
	width: 600px;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('table tr>td:nth-child(2)').click(function() {
			var cno = $(this).siblings().first().text();
			location.href = 'course.bit?idx=' + cno;
		});
	});
</script>
</head>
<%@ include file="template/header.jspf"%>
<%@ include file="template/menu.jspf"%>
<body>
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
			<td><a
				href="<%=root%>/lms/courses/course.bit?idx=<%=bean.getCno()%>"><%=bean.getCtitle()%></a></td>
			<td><%=bean.getCbegin()%></td>
			<td><%=bean.getCend()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<a href="<%=root%>/lms/courses/cadd.bit">과정추가</a>
	<a href="<%=root%>/lms/courses/reglist.bit">수강신청관리</a>
		<jsp:include page="/paging.jsp">
			<jsp:param value="${paging.page}" name="page" />
			<jsp:param value="${paging.beginPage}" name="beginPage" />
			<jsp:param value="${paging.endPage}" name="endPage" />
			<jsp:param value="${paging.prev}" name="prev" />
			<jsp:param value="${paging.next}" name="next" />
		</jsp:include>
	<%@ include file="template/footer.jspf"%>
</body>
</html>