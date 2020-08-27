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

</style>
<script type="text/javascript">

</script>

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

<h2>공지사항</h2>

<jsp:useBean id="bean" class="com.bit.lms_notice.model.NtcDto" scope="request"></jsp:useBean>
<table width="500" cellpadding="0" cellspacing="0" border="1">

	<tr>
		<th>제목</th>
		<td><jsp:getProperty property="ntitle" name="bean"/> </td>
	</tr>
	<tr>
		<th>날짜</th>	
		<td><jsp:getProperty property="ndate" name="bean"/> </td>
	</tr>
	<tr>	
		<td colspan="2"><img alt="" src="<%=root%>/up/${bean.nurl}"/></td>	
<%-- 		<td colspan="2"><img alt="" src="/jeju/up/${bean.nurl}"/>up/${bean.nurl}</td>	 --%>
	</tr>
	<tr>
		<th>내용</th>
		<td><jsp:getProperty property="nbody" name="bean"/> </td>
	</tr>				
</table>
		<div>
			<button><a href="/jeju/notice.bit">목록으로 돌아가기</button>
		</div>


<%@ include file="template/footer.jspf" %>
</body>
</html>