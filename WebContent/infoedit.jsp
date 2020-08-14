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
			<h2>회원 정보</h2>
		</div>
		<div>
			<form>
			<% 
			String type = request.getParameter("type"); 
			if(!type.equals("pw")) {
			%>
				<div>
					<label for="<%= type %>"><%= type %></label>
					<input type="text" name="<%= type %>" id="<%= type %>">
				</div>
			<% 
			} else { 
			%>
				<div>
					<label for="<%= type %>"><%= type %></label>
					<input type="password" name="<%= type %>" id="<%= type %>">
				</div>
				<div>
					<label for="pwcheck">비밀번호 확인</label>
					<input type="password" name="pwcheck" id="pwcheck">
				</div>
			<% } %>
				<div>
					<button type="submit" id="edit">수정</button>
					<button type="button" id="cancel">취소</button>
				</div>
			</form>
		</div>
	</div>					
	<%@ include file="template/footer.jspf" %>
</body>

</html>