<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>student</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
$
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
<h2>${std.sno}번 ${std.name} (${std.ldesc }) 상세 보기</h2>

<a href="<%=root %>/lms/students/sedit.bit?sno=${std.sno}">학생상태변경</a>
<a href="<%=root %>/lms/students.bit">학생목록으로 돌아가기</a>

<table>
	<tr>
		<th>성적-Java</th>
		<th>성적-web</th>
		<th>성적-framework</th>
		<th>성적평균</th>
		<th>수업일수</th>
		<th>출석일수</th>
		<th>출석률</th>
		<th>지각</th>
		<th>조퇴</th>
		<th>결석</th>
	</tr>
	<tr>
		<td><c:if test="${std.gr1 ne 0}">${std.gr1 }</c:if></td>
		<td><c:if test="${std.gr2 ne 0}">${std.gr2 }</c:if></td>
		<td><c:if test="${std.gr3 ne 0}">${std.gr3 }</c:if></td>
		<c:set var="count" value="0"></c:set>
		<c:if test="${std.gr1 ne 0}">
			<c:set var="count" value="${count+1 }"></c:set>
		</c:if>
		<c:if test="${std.gr2 ne 0}">
			<c:set var="count" value="${count+1 }"></c:set>
		</c:if>
		<c:if test="${std.gr3 ne 0}">
			<c:set var="count" value="${count+1 }"></c:set>
		</c:if>
		<td><fmt:formatNumber value="${(std.gr1+std.gr2+std.gr3) div count }" pattern=".0" /></td>
		<td>${std.cnt }</td>
		<td>${std.att_total }일</td>
		<td>${std.att_rate }%</td>
		<td>${std.late }회</td>
		<td>${std.leftearly }회</td>
		<td>${std.absent }일</td>
	</tr>
</table>
<br>
<table>
	<tr>
		<th>번호</th>
		<th>날짜</th>
		<th>등원</th>
		<th>하원</th>
	</tr>
	<c:forEach items="${att }" var="att" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${att.adate }</td>
			<td>
				<c:choose>
				    <c:when test="${att.ckin eq 2 && att.ckout ne 0}">지각</c:when>
				    <c:when test="${att.ckin eq 0}">등원정보없음</c:when>
				    <c:otherwise>정상등원</c:otherwise>
				</c:choose>
			</td>
			<td>
				<c:choose>
				    <c:when test="${att.ckout eq 3 && att.ckin ne 0}">조퇴</c:when>
				    <c:when test="${att.ckout eq 0}">하원정보없음</c:when>
				    <c:otherwise>정상하원</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</c:forEach>
</table>

<%@ include file="template/footer.jspf" %>
</body>
</html>