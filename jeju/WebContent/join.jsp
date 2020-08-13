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
	<div id="content">
		<div>
			<h2>로그인</h2>
		</div>
		<div>
			<div>
				<label for="id">아이디 (영문, 숫자 조합 최소 5자)</label>
				<input type="text" id="id" name="id"/>
				<span id="errid"></span>
			</div>
			<div>
				<label for="pw">비밀번호 (영문, 한글, 특수문자 포함 최소 8자)</label>
				<input type="password" id="pw" name="pw"/>
				<span id="errpw"></span>
			</div>
			<div>
				<label for="pwcheck">비밀번호 확인</label>
				<input type="password" id="pwcheck" name="pwcheck"/>
				<span id="errpwcheck"></span>
			</div>
			<div>
				<div>비밀번호 찾기 질문: 가장 좋아하는 동물은?</div>
				<label for="answer">비밀번호 찾기 답 (한글 기준 10자 이내)</label>
				<input type="password" id="answer" name="answer"/>
				<span id="erranswer"></span>
			</div>
			<div>
				<label for="tel">전화번호</label>
				<input type="password" id="tel" name="tel"/>
				<span id="errtel"></span>
			</div>
			<div>
				<label for="email">이메일</label>
				<input type="password" id="email" name="email"/>
				<span id="erremail"></span>
			</div>
			<div>
				<button id="btnlogin" value="버튼">버튼</button>
			</div>
		</div>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>