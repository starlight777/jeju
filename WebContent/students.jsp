<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>students</title>
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
<script type="text/javascript">
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>전체 학생 목록</h2>

<table>
	<tr>
		<th>학생번호</th>
		<th>학생이름</th>
		<th>강좌번호</th>
		<th>강좌명</th>
		<th>성적평균</th>
		<th>수업일수</th>
		<th>출석일수</th>
		<th>출석률</th>
		<th>학생상태</th>
	</tr>
	<c:set var="length" value="${fn:length(stds) }"/>
	<c:set var="pageSize" value="20" />
	<c:set var="pageNum" value="${param.p}"/> 
		<c:if test="${pageNum eq null}">
	    	<c:set var="pageNum" value="1"/>
		</c:if>
	<c:set var="currentPage" value="${pageNum}"/>
	<c:set var="startRow" value="${(currentPage-1)*pageSize+1 }"/>
	<c:set var="endRow" value="${currentPage * pageSize}"/>
	<c:set var="number" value="0"/>
	<c:set var="number" value="${length-(currentPage-1)*pageSize}"/>
	<c:forEach items="${std }" var="std">
		<tr>
			<td><a href="<%=root %>/lms/students/student.bit?sno=${std.sno}">${std.sno }</a></td>
			<td><a href="<%=root %>/lms/students/student.bit?sno=${std.sno}">${std.name }</a></td>
			<td>${std.cno }</a></td>
			<td>${std.ctitle }</a></td>
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
			<td>${std.ldesc }</td>
		</tr>
	</c:forEach>
</table>

<c:if test="${length>0}">
	<fmt:formatNumber var="pageCount" value="${(length/pageSize)+(1-((length/pageSize)%1))%1}" pattern="0"/>
    <fmt:formatNumber var="valueA" value="${pageNum / pageSize}" pattern="0"/>
    <fmt:formatNumber var="startPage" value="${valueA * pageSize+1 }" pattern="0"/>
    <c:set var="pageBlock" value="10" />
    <fmt:formatNumber var="endPage" value="${startPage + pageBlock-1}"  pattern="0"/>
    <c:if test="${endPage lt pageCount}">
        <c:set var="endPage" value="${pageCount}" />
<%--         <fmt:formatNumber var="endPage" value="${pageCount}" pattern="0" /> --%>
    </c:if>
    <c:if test="${startPage > 10 }">
        <a href="<%=root %>/lms/students.bit?p=${startPage - 10}" >[이전]</a>
    </c:if>
    <c:forEach begin="${startPage }" end="${endPage }" step="1" var="i">
       <a href="<%=root %>/lms/students.bit?p=${i}" >[${i}]</a>
    </c:forEach>
    <c:if test="${endPage < pageCount }" >
        <a href="<%=root %>/lms/students.bit?p=${startPage + 10}" >[다음]</a>
    </c:if>
</c:if>
<form name="form" action="<%=root %>/lms/students.bit" method="post"> 
       <input type="hidden" name="startRow" value="${startRow}"/> 
       <input type="hidden" name="endRow" value="${endRow}"> 
       <button type="submit" id="submitform">보기</button>
</form> 

<%@ include file="template/footer.jspf" %>
</body>
</html>