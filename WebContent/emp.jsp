<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mystus</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
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
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>전체 직원 목록</h2>

<table>
	<tr>
		<th>직원번호</th>
		<th>직원이름</th>
		<th>전화번호</th>
		<th>이메일주소</th>
		<th>입사일</th>
		<th>부서번호</th>
		<th>부서명</th>
	</tr>
	<c:forEach items="${emps }" var="emp">
		<tr>
			<td>${emp.eno }</td>
			<td>${emp.name }</td>
			<td>
				<fmt:formatNumber var="tel" value="${emp.tel }" pattern="000,0000,0000" />
				<c:out value="${fn:replace(tel,',','-') }" />
			</td>
			<td>${emp.email }</td>
			<td>${emp.hdate }</td>
			<td>${emp.dno }</td>
			<td>${emp.dname }</td>
		</tr>
	</c:forEach>
</table>

<%@ include file="template/footer.jspf" %>
</body>
</html>