<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.lms_notice.model.NtcDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
#content>table{
	width: 80%;
}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
</script>
</head>

<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<h2>공지사항</h2>

<table width="500" cellpadding="0" cellspacing="0" border="1">

	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>종류</th>
		<th>날짜</th>
	</tr>
	
	<%
	ArrayList<NtcDto> list=(ArrayList<NtcDto>)request.getAttribute("list");
		for(NtcDto bean:list){
	%>	
	<tr>
			<td><%=bean.getNno() %></td>
			<td><a href="/jeju/notice/ndetail.bit?idx=<%=bean.getNno() %>"><%=bean.getNtitle() %></a></td>
			<td><%=bean.getNtype() %></td>
			<td><%=bean.getNdate() %></td>			
	</tr>
		<%} %>
			
</table>

<%-- 페이지 추가 --%>

<a href = "/jeju/lms/ntc/nadd.bit">글쓰기</a>

<%@ include file="template/footer.jspf" %>
</body>
</html>