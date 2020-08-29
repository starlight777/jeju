<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.crs.model.V_crsDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>mycourses</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
<style type="text/css">
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<h2>${elogin.name }님의 강의 목록</h2>

<table>
	<tr>
		<th>강좌번호</th>
		<th>강좌명</th>
		<th>개강일</th>
		<th>종강일</th>
		<th>상태</th>
		<th></th>
	</tr>
	<c:forEach items="${list }" var="bean">
		<tr>
			<td><a href="<%=root %>/lms/mytask/mystus.bit?cno=${bean.cno}">${bean.cno}</a></td>
			<td><a href="<%=root %>/lms/mytask/mystus.bit?cno=${bean.cno}">${bean.ctitle}</a></td>
			<td>${bean.cbegin} </td>
			<td>${bean.cend} </td>
			<td>
				<c:set var="today" value="<%=new java.util.Date()%>"/>
				<c:set var="begin" value="${bean.cbegin}"/>
				<c:set var="end" value="${bean.cend}"/>
				<c:choose>
				    <c:when test="${today ge end}"><c:set var="status" value="종료"></c:set>종료</c:when>
				    <c:when test="${today le begin}"><c:set var="status" value="개강예정"></c:set>개강예정</c:when>
				    <c:otherwise><c:set var="status" value="진행중"></c:set>진행중</c:otherwise>
				</c:choose>
			</td>
			<td>
				<c:if test="${status eq '진행중'}">
				
				<a href="<%=root %>/lms/mytask/mystus/att.bit?cno=${bean.cno}">출결입력</a>
				
				</c:if>
			</td>
		</tr>
	</c:forEach>
</table>

<%@ include file="template/footer.jspf" %>
</body>
</html>