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
<title>BitCamp 제주</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

.bit, #header #section #content #footer {
	width: 1920px;
	height: 1080px;
	position: absolute;
}

#header {
	background-image: url("img/logo.png");
	background-repeat: no-repeat;
	background-position: left;
	background-color: gray;
	height: 88px;
	padding: 5px;
}

#header>ul {
	margin-left: 80%;
}

#header>ul>li {
	display: inline-block;
}

#header>ul>li>a {
	text-decoration: none;
	margin: 15px;
	color: white;
	font-size: 12px;
} 	
#content {
	height: 80%;
	width: 100%;
	background-color: white;
	border: 1px solid black;
}

h2 {
	margin: 100px;
	margin-left: 400px;
}

table {
	width: 1000px;
	text-align: center;
	border-collapse: collapse;
	margin-left: 450px;
}

table>tbody>tr>th {
	border: 1px solid black;
}

table>tbody>tr>td {
	border: 1px solid black;
}
button {
	width: 100px;
	margin-top: 40px;
	margin-left: 20px;
	position: relative;
	left: 915px;
}

button>a{
	text-decoration: none;
	color:black;
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
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<div class="bit"></div>
		<div id="content">
	 
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
			<jsp:include page = "/paging.jsp">
				<jsp:param value = "${paging.page}" name = "page"/>		
				<jsp:param value = "${paging.beginPage}" name = "beginPage"/>
				<jsp:param value = "${paging.endPage}" name = "endPage"/>
				<jsp:param value = "${paging.prev}" name = "prev"/>	
				<jsp:param value = "${paging.next}" name = "next"/>	
			</jsp:include>
		</div>
		<div id="footer">
			<address>비트캠프 제주특별자치도 서귀포시 강정동 736</address>
			(주)비트컴퓨터 제주점<br /> Copyright &copy; 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>