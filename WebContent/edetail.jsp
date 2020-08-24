<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>edetail</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>직원 상세 보기</h2>

<table>
	<tr>
		<th>직원번호</th>
		<td>${emp.eno }</td>
	</tr>
	<tr>
		<th>직원이름</th>
		<td>${emp.name }</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>
			<fmt:formatNumber var="tel" value="${emp.tel }" pattern="000,0000,0000" />
			<c:out value="${fn:replace(tel,',','-') }" />
		</td>
	</tr>
	<tr>
		<th>이메일주소</th>
		<td>${emp.email }</td>
	</tr>
	<tr>
		<th>입사일</th>
		<td>${emp.hdate }</td>
	</tr>
	<tr>
		<th>부서번호</th>
		<td>${emp.dno }</td>
	</tr>
	<tr>
		<th>부서명</th>
		<td>${emp.dname }</td>
	</tr>
</table>
<a href="<%=root %>/lms/emp.bit">직원 목록으로 돌아가기</a>

<%@ include file="template/footer.jspf" %>
</body>
</html>