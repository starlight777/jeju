<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.lms_notice.model.NtcDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
	
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		$('#content>div:first-child>button').first().click(function() {
			history.back();
			return false;
		});
	});

</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>수정페이지</h2>
	<form method="post" enctype="multipart/form-data">
		<div>
			<label for="ntitle">제목</label>
			<input type="text" name="ntitle" id="ntitle" value="${bean.ntitle }" />
		</div>
		<div>
			<label for="ndate">날짜</label>
			<input type="text" name="ndate" id="ndate" value="${bean.ndate }" readonly />
		</div>
		<div>
			<label for="nurl"></label>
			<input type="file" name="nurl" id="nurl" value="${bean.nurl }" /><br>
			<td colspan="2"><img alt="" src="<%=root%>/up/${bean.nurl}"/></td>
		</div>
		<div>
			
			<button type="submit">수정</button>
			
		</div>
	</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>








