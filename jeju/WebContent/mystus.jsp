<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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



<h2>우리반 상세 보기</h2>
<!-- <table> -->
<!-- 	<tr> -->
<!-- 		<th>강좌번호</th> -->
<!-- 		<th>강좌명</th> -->
<!-- 		<th>개강일</th> -->
<!-- 		<th>종강일</th> -->
<!-- 		<th>총수업일수</th> -->
<!-- 		<th>현재수업일수</th> -->
<!-- 		<th>정원</th> -->
<!-- 		<th>현재학생수</th> -->
<!-- 		<th>평균성적</th> -->
<!-- 		<th>평균출석률</th> -->
<!-- 	</tr> -->
<%-- <%-- 	<%  --%> --%>
<!-- // 	ArrayList<V_stdDto> list=(ArrayList<V_stdDto>)request.getAttribute("list"); -->
<!-- // 	for(V_stdDto bean: list){ -->
<%-- <%-- 	%> --%> --%>
<!-- 	<tr> -->
<%-- <%-- 		<td><%=bean.getCno() %></td> --%> --%>
<%-- <%-- 		<td><%=bean.getCtitle() %></td> --%> --%>
<%-- <%-- 		<td><%=bean.getCbegin() %></td> --%> --%>
<%-- <%-- 		<td><%=bean.getCend() %></td> --%> --%>
<%-- <%-- 		<td><%=bean.getCdays() %></td> --%> --%>
<%-- <%-- 		<td><%=bean.getCnt() %></td> --%> --%>
<%-- <%-- 		<td><%=bean.getLCnt() %></td> --%> --%>
<!-- 	</tr> -->
<%-- 	<%} %> --%>

<!-- </table> -->
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
	<% 
	ArrayList<V_stdDto> list=(ArrayList<V_stdDto>)request.getAttribute("list");
	for(V_stdDto bean: list){
	%>
	<tr>
		<td><%=bean.getSno() %></td>
		<td><%=bean.getName() %></td>
		<td><%=bean.getGr1() %></td>
		<td><%=bean.getGr2() %></td>
		<td><%=bean.getGr3() %></td>
		<td><%=(bean.getGr1()+bean.getGr2()+bean.getGr3()) %></td>
		<td><%=bean.getCnt() %></td>
		<td><%=bean.getAtt_total() %></td>
		<td><%=bean.getAtt_rate() %>%</td>
	</tr>
	<%} %>

</table>


<%@ include file="template/footer.jspf" %>
</body>
</html>