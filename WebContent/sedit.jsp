<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sedit</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
<script type="text/javascript">
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>${std.sno}번 ${std.name} (${std.ldesc }) 상태변경</h2>

<form action="<%=root %>/lms/students/sedit.bit" method="post">
	<div>
		<input type="radio" name="lvl" id="L04" value="L04" />
		<label for="L04">L04 졸업생</label>
		<input type="radio" name="lvl" id="L05" value="L05" />
		<label for="L05">L05 졸업후취업</label>
		<input type="radio" name="lvl" id="L06" value="L06" />
		<label for="L06">L06 수강중단</label>
	</div>
	<input type="hidden" name="sno" value="${std.sno }"/>

	<button type="submit">상태변경완료</button>
</form>

<%@ include file="template/footer.jspf" %>
</body>
</html>