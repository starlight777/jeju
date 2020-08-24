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

</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<h2>수강신청이 완료되었습니다</h2>

<jsp:useBean id = "course" class = "com.bit.course.model.CourseDto" scope = "request"/>
			
		<table>
				<tr>
					<th>강좌명</th>
					<td><jsp:getProperty property="ctitle" name="course"/></td>
				</tr>
				<tr>
					<th>개강일</th>
					<td><jsp:getProperty property="cbegin" name="course"/></td>
				</tr>
		</table>
				
		<div>
			<button><a href="/jeju/index.bit">홈으로 돌아가기</button>
		</div>

<%@ include file="template/footer.jspf" %>
</body>
</html>