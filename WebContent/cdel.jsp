<%@page import="com.bit.course.model.CourseDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf" %>
<<<<<<< HEAD
<script type="text/javascript" src="<%=root %>/js/jquery-1.12.4.js"></script>
=======
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
<style type="text/css">
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<<<<<<< HEAD
<%@ include file="template/menu.jspf" %>	
	<div><%=request.getParameter("ctitle")%>반이 삭제 되었습니다.</div>
		<div>
			<button type = "button" onclick="location.href='/jeju/lms/courses.bit'">홈으로 가기</button>
		</div>
=======
<%@ include file="template/menu.jspf" %>
<h2>과정삭제 완료확인</h2>	
	<div><%=request.getParameter("ctitle")%>반이 삭제 되었습니다.</div>
	<div>
		<button type = "button" onclick="location.href='/jeju/lms/courses.bit'">홈으로 가기</button>
	</div>
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
<%@ include file="template/footer.jspf" %>
</body>
</html>