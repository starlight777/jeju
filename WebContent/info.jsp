<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 회원정보</title>
<%@ include file="template/head.jspf" %>
<script type="text/javascript">
	$(document).ready(function() {
		var typelist = ['id', 'pw', 'answer', 'name', 'tel', 'email'];
		$('tr').each(function(i, e) {
			if(i == 0) return;
			$(e).on('click', function() {
				console.log($(e).children().eq(1).text());
				location.href = '/jeju/mypage/infoedit.bit?type=' + typelist[i];
			});
		});
	});
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<div id="content">
		<div>
			<h2>회원 정보 ${user.name }</h2>
		</div>
		<div>
			<table>
				<tbody>
					<tr><td>아이디</td><td>${user_info.id }</td><td>></td></tr>
					<tr><td>비밀번호</td><td>xxxxxxxx</td><td>></td></tr>
					<tr><td>비밀번호 찾기 답</td><td>${user_info.answer }</td><td>></td></tr>
					<tr><td>이름</td><td>${user_info.name }</td><td>></td></tr>
					<tr><td>전화번호</td><td>${user_info.tel }</td><td>></td></tr>
					<tr><td>이메일</td><td>${user_info.email }</td><td>></td></tr>
				</tbody>
			</table>
		</div>
		<div>
			<a href="/jeju/login/leave.bit">탈퇴하기</a>
		</div>
	</div>					
	<%@ include file="template/footer.jspf" %>
</body>

</html>