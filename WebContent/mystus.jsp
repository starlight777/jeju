<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mystus</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
<style type="text/css">
</style>
	
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>강의 상세 보기</h2>

<a href="<%=root %>/lms/mytask/mystus/att.bit?cno=${crs.cno}">출결입력</a>
<a href="<%=root %>/lms/mytask/mystusall.bit?cno=${crs.cno}">전체학생보기</a>
<a href="<%=root %>/lms/mytask/mycourses.bit?eno=${elogin.eno}">내강의목록으로 돌아가기</a>

<table>
	<tr>
		<th>강좌번호</th>
		<th>강좌명</th>
		<th>개강일</th>
		<th>종강일</th>
		<th>수업일수</th>
		<th>현재수업일수</th>
		<th>정원</th>
		<th>현재학생수</th>
		<th>평균성적</th>
		<th>평균출석률</th>
	</tr>
		<tr>
			<td>${crs.cno }</td>
			<td>${crs.ctitle }</td>
			<td>${crs.cbegin }</td>
			<td>${crs.cend }</td>
			<td>${crs.cdays }</td>
			<td>${crs.dcnt }</td>
			<td>${crs.climit }</td>
			<td>${crs.stdcnt }</td>
			<c:set var="count" value="0"></c:set>
			<c:if test="${crs.avg_gr1 ne 0}">
				<c:set var="count" value="${count+1 }"></c:set>
			</c:if>
			<c:if test="${crs.avg_gr2 ne 0}">
				<c:set var="count" value="${count+1 }"></c:set>
			</c:if>
			<c:if test="${crs.avg_gr3 ne 0}">
				<c:set var="count" value="${count+1 }"></c:set>
			</c:if>
			<td>
				<c:if test="${count ne 0 }">
					<fmt:formatNumber value="${(crs.avg_gr1+crs.avg_gr2+crs.avg_gr3) div count }" pattern=".0" />
				</c:if>
			</td>
			<td>${crs.avg_att }%</td>
		</tr>
</table>
<br>
<table>
	<tr>
		<th>학생번호</th>
		<th>학생이름</th>
		<th>성적-Java</th>
		<th>성적-web</th>
		<th>성적-framework</th>
		<th>성적평균</th>
		<th>수업일수</th>
		<th>출석일수</th>
		<th>출석률</th>
	</tr>
	<c:forEach items="${stds }" var="std">
		<tr>
			<td><a href="<%=root %>/lms/mytask/mystus/mystu.bit?sno=${std.sno}">${std.sno }</a></td>
			<td><a href="<%=root %>/lms/mytask/mystus/mystu.bit?sno=${std.sno}">${std.name }</a></td>
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
			<td>
				<c:if test="${count ne 0 }">
					<fmt:formatNumber value="${(std.gr1+std.gr2+std.gr3) div count }" pattern=".0" />
				</c:if>
			</td>
			<td>${std.cnt }</td>
			<td>${std.att_total }</td>
			<td>${std.att_rate }%</td>
		</tr>
	</c:forEach>
</table>

<%@ include file="template/footer.jspf" %>
</body>
</html>