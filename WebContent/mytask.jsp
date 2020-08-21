<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>mytask</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<c:if test="${elogin.dname eq '행정'}">
	<c:redirect url="/lms/courses/cadd.bit" context="<%=root %>" />
</c:if>
<c:if test="${elogin.dname eq '영업'}">
	<c:redirect url="/lms/courses/reglist.bit" context="<%=root %>" />
</c:if>
<c:if test="${elogin.dname eq '강사'}">
	<c:redirect url="/lms/mytask/mycourses.bit?eno=${elogin.eno}" context="<%=root %>" />
</c:if>

<!-- <div id="ga"> -->
<!-- 	<h2>행정</h2> -->
<%-- 	<a href="<%=root %>/lms/courses/cadd.bit">강의개설</a> --%>
<!-- </div> -->
<!-- <div id="prof"> -->
<!-- 	<h2>강사</h2> -->
<%-- 	<a href="<%=root %>/lms/mytask/mycourses.bit?eno=${elogin.eno}">내강의목록</a> --%>
<!-- </div> -->

<!-- <div id="sales"> -->
<!-- 	<h2>영업</h2> -->
<%-- 	<a href="<%=root %>/lms/courses/reglist.bit">수강신청관리</a> --%>
<!-- </div> -->

<%@ include file="template/footer.jspf" %>
</body>
</html>