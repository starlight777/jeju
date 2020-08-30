<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>

<%@ include file="template/head.jspf"%>
<script type="text/javascript" src="<%=root %>/js/jquery-1.12.4.js"></script>
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
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>교육과정추가 페이지</h2>
	<form method="post">
			<table>
				<tr>
					<th> <label for="ctitle">강좌명</label> </th>
					<td> <input type="text" style = "width:400px;" name="ctitle" id="ctitle" /> </td>
				</tr>
				<tr>
					<th> <label for="croom">강의실</label> </th>
					<td> <select name = "croom" id= "croom">
							<option value = "401">401</option>
							<option value = "402">402</option>
							<option value = "403">403</option>						
						</select>
					</td>			
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
					<td> <select name = "profno" id= "profno">
							<option value = "1008">설민석</option>
							<option value = "1009">정승제</option>
							<option value = "1010">황현필</option>						
						</select>
					</td>				
				</tr>
				<tr>
					<th> <label for="salesno">영업사원</label> </th>
					<td>  <select name = "salesno" id= "salesno">
							<option value = "1001">영업일</option>
							<option value = "1002">영업이</option>
						</select>
					</td>			
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