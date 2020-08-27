<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<<<<<<< HEAD
<%@ include file="template/head.jspf"%>
<script type="text/javascript" src="<%=root %>/js/jquery-1.12.4.js"></script>
=======
<%@ include file="template/head.jspf" %>
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
<style type="text/css">

	#content table{
		margin-top: 100px;
		margin-left: 300px;
		width: 600px;
	}
	
	table+div {
		margin-left: 100px;
		margin-top: 30px;		
	}

	table tr>th{
		width:100px;
	}
	
	table tr>td{
		width:300px;
		text-align: left;
	}


</style>
</head>
<body>
<<<<<<< HEAD
<%@ include file="template/header.jspf"%>
<%@ include file="template/menu.jspf"%>
=======
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>교육과정추가 페이지</h2>
>>>>>>> 04a9fdeffd7e77a4c760cb103d491f8148ccdfd3
	<form method="post">
			<table>
				<tr>
					<th> <label for="ctitle">강좌명</label> </th>
					<td> <input type="text" style = "width:400px;" name="ctitle" id="ctitle" /> </td>
				</tr>
				<tr>
					<th> <label for="croom">강의실</label> </th>
					<td> <input type="text"name="croom" id="croom" /> </td>
				</tr>
				<tr>
					<th> <label for="cbegin">개강일</label> </th>
					<td> <input type="date"name="cbegin" id="cbegin" /> </td>
				</tr>
				<tr>
					<th> <label for="cend">종강일</label> </th>
					<td> <input type="date" name="cend" id="cend" /> </td>
				</tr>
				<tr>
					<th> <label for="profno">강사</label> </th>
					<td> <input type="text" name="profno" id="profno" /> </td>
				</tr>
				<tr>
					<th> <label for="salesno">영업사원</label> </th>
					<td> <input type="text" name="salesno" id="salesno" /> </td>
				</tr>
			</table>
			<div>
				<input type="submit" value="입력완료"/> 
				<input type="reset" value="취소" />
				<input type="button" value="뒤로가기" onclick="history.back();" />
			</div>
	</form>
	<%@ include file="template/footer.jspf"%>
</body>
</html>