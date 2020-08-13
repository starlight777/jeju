<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 회원정보</title>
<%@ include file="template/head.jspf" %>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/section.jspf" %>
	<div id="content">
		<div>
			<h2>회원 정보 ${user.name }</h2>
		</div>
		<div>
			<table>
				<tr><td>아이디</td><td>${user_info.id }</td><td>></td></tr>
				<tr><td>비밀번호</td><td>xxxxxxxx</td><td>></td></tr>
				<tr><td>비밀번호 찾기 답</td><td>xxxxxxxx</td><td>></td></tr>
				<tr><td>이름</td><td>${user_info.name }</td><td>></td></tr>
				<tr><td>전화번호</td><td>${user_info.tel }</td><td>></td></tr>
				<tr><td>이메일</td><td>${user_info.email }</td><td>></td></tr>
			</table>
		</div>
	</div>					
	<%@ include file="template/footer.jspf" %>
</body>

</html>