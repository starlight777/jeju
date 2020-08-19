<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.lms_notice.model.NtcDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../template/head.jspf" %>
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
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>

<h2>교육과정(상세)</h2>

<jsp:useBean id = "course" class = "com.bit.courses.model.CourseDto" scope = "request"/>
<jsp:useBean id="bean" class="com.bit.lms_notice.model.NtcDto" scope="request"></jsp:useBean>
			<div>
				<form method="post" action="/jeju/opencourse/register.bit">
					<input type="text" name="cno" value="<jsp:getProperty property="cno" name="course"/>" hidden="true" readonly="true">
					<button type="submit" >수강신청</button>
				</form>
			</div>
			
		<table>
				<tr>
					<th>강의번호</th>
					<td><jsp:getProperty property="cno" name="course"/></td>
				</tr>
				<tr>
					<th>강좌명</th>
					<td><jsp:getProperty property="ctitle" name="course"/></td>
				</tr>
				<tr>
					<th>개강일</th>
					<td><jsp:getProperty property="cbegin" name="course"/></td>
				</tr>
				<tr>
					<th>종강일</th>
					<td><jsp:getProperty property="cend" name="course"/></td>
				</tr>
				<tr>
					<th>수업일수</th>
					<td><jsp:getProperty property="cdays" name="course"/></td>
				</tr>
				<tr>
					<th>정원</th>
					<td><jsp:getProperty property="climit" name="course"/></td>
				</tr>
				<tr>
					<th>강의실</th>
					<td><jsp:getProperty property="croom" name="course"/></td>
				</tr>
				<tr>
					<th>강사</th>
					<td><jsp:getProperty property="prof" name="course"/></td>
				</tr>
				<tr>
					<th>영업사원</th>
					<td><jsp:getProperty property="salesno" name="course"/></td>
				</tr>
				<tr>	
					<td colspan="2"><img alt="" src="<%=root%>/up/${bean.nurl}"/></td>	
				</tr>		
		</table>
				
		<div>
			<button><a href="/jeju/opencourse.bit">목록으로 돌아가기</button>
		</div>


<%@ include file="../template/footer.jspf" %>
</body>
</html>