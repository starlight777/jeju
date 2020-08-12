<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점: 로그인</title>
<link rel="stylesheet" type="text/css" href="css/frame.css">
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<!-- content start -->
		<div>
			<h2>로그인</h2>
		</div>
		<div>
			<form>
				<div>
					<label for="id">아이디</label>
					<input type="text" id="id" name="id"/>
					<span class="err"></span>
				</div>
				<div>
					<label for="pw">비밀번호</label>
					<input type="password" id="pw" name="pw"/>
					<span class="err"></span>
				</div>
				<div>
					<input type="submit" value="로그인">
				</div>
				<div>
					<span><a href="login/findid.bit">아이디 찾기</a></span>
					<span><a href="login/findpw.bit">비밀번호 찾기</a></span>
					<span><a href="login/join.bit">회원가입</a></span>
				</div>
			</form>
		</div>
	<!-- content end -->
	<%@ include file="template/footer.jspf" %>
</body>
</html>