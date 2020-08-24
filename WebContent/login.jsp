<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 로그인</title>
<%@ include file="template/head.jspf" %>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btnlogin').on('click', function() {
			$('#errid').text('');
			$('#errpw').text('');
			var trylogin = false;
			
			var id = $('#id').val();
			var pw = $('#pw').val();
			
			if(id == '') {
				$('#errid').text('아이디를 입력하세요');
				trylogin = true;
			} 
			
			if(pw == '') {
				$('#errpw').text('비밀번호를 입력하세요');
				trylogin = true;
			}
			
			if(trylogin) {
				if($('#errid').text()) {
					$('#id').focus();
					return;
				}
				if($('#errpw').text()) {
					$('#pw').focus();
					return;
				}
			}
			
			console.log(id + ', ' + pw);
			
			$.ajax({
				type: 'post',
				data: 'id=' + id + "&pw=" + pw,
				url: 'login.bit',
				success: function(value) {
					console.log(value);
					if(value == 'no id') {
						$('#errid').text('일치하는 ID가 없습니다.');
					}
					if(value == 'wrong pw') {
						$('#errpw').text('비밀번호가 다릅니다.');
					}
					if(value == 'login') {
						location.href = 'mypage/info.bit';
					}
				}
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
			<h2>로그인</h2>
		</div>
		<div>
			<div>
				<label for="id">아이디</label>
				<input type="text" id="id" name="id"/>
				<span id="errid"></span>
			</div>
			<div>
				<label for="pw">비밀번호</label>
				<input type="password" id="pw" name="pw"/>
				<span id="errpw"></span>
			</div>
			<div>
				<button id="btnlogin">로그인</button>
			</div>
			<div>
				<span><a href="login/findid.bit">아이디 찾기</a></span>
				<span><a href="login/findpw.bit">비밀번호 찾기</a></span>
				<span><a href="login/join.bit">회원가입</a></span>
			</div>
		</div>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>