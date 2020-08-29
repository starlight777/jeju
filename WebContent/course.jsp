<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
#content table td{
	padding: 0 30px;
	text-align: left;
}
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<jsp:useBean id = "course" class = "com.bit.course.model.CourseDto" scope = "request"/>
<h2>교육과정 상세</h2>
<table>
	<tr>
		<th>강의번호</th>
		<td><jsp:getProperty property="cno" name="course"/></td>
	</tr>
	<tr>
		<th>강좌명</th>
		<td><jsp:getProperty property="ctitle" name="course"/></td>
	</tr>
	<tr>
		<th>개강일</th>
		<td><jsp:getProperty property="cbegin" name="course"/></td>
	</tr>
	<tr>
		<th>종강일</th>
		<td><jsp:getProperty property="cend" name="course"/></td>
	</tr>
	<tr>
		<th>수업일수</th>
		<td><jsp:getProperty property="cdays" name="course"/></td>
	</tr>
	<tr>
		<th>정원</th>
		<td><jsp:getProperty property="climit" name="course"/></td>
	</tr>
	<tr>
		<th>강의실</th>
		<td><jsp:getProperty property="croom" name="course"/></td>
	</tr>
	<tr>
		<th>강사</th>
		<td><jsp:getProperty property="prof" name="course"/></td>
	</tr>
	<tr>
		<th>영업사원</th>
		<td><jsp:getProperty property="salesno" name="course"/></td>
	</tr>
</table>
<div>
	<button type="button" onclick="location.href = 'cedit.bit?idx=<%=course.getCno()%>'">수정</button>
	<button type="button" onclick="location.href = 'cdel.bit?cno=<%=course.getCno()%>&ctitle=<%=course.getCtitle() %>'">삭제</button>
	<button type="button" onclick="location.href = '../courses.bit'">뒤로가기</button>
</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>