<%@page import="com.bit.account.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 내학습정보</title>
<%@ include file="template/head.jspf" %>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

	<h2>내학습정보(${user.lvl })</h2>
	<div>
		<% if(((MemberDto) session.getAttribute("user")).getLvl().equals("L01")) { %>
		<div>아직 신청한 강의가 없습니다!</div>
		<% } else { %>
		<div>과정: ${course.ctitle }, ${course.prof }, ${course.cbegin }, ${course.cend }</div>
		<div>출석: ${attendance.att_rate }, ${attendance.cnt }</div>
		<div>성적: ${student.gr1 }, ${student.gr2 }, ${student.gr3 }</div>
		<% } %>
	</div>
				
<%@ include file="template/footer.jspf" %>
</body>
</html>