<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 회원가입</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
	.default_input {
	}
	
	.change_input {
		border-color: red;
		border-radius: 3px;
		border-style: solid;
	}
	
	.change_check {
		outline-color: red;
		outline-style: auto;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// * * * * * 블록 변수 * * * * *
		var tryfindpw = false;
		// * * * * * * * * * * * * * * *
		
		// * * * * * 각 필드별 에러메시지 출력 함수 * * * * *
		var err_message = function(field, message) {
			$('#err' + field).text(message);	
			$('#' + field).addClass('change_input');	
			tryfindpw = true;	// true면 post 실행하지 않음
		}
		// * * * * * * * * * * * * * * * * * * * * * * * * *
		document.querySelector('#btnfindpw').addEventListener('click', function() {
			// * * * * * 에러 메시지 및 값 초기화 * * * * *
			$('span').text('');
			$('input').removeClass('change_input').removeClass('change_check');
			tryfindpw = false;
			
			var id = $('#id').val();
			// * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * 필드 별 유효성 검증 및 에러메시지 출력 함수 실행 * * * * *
			if(id == '') {	
				err_message('id', '아이디를 입력하세요');	
			} else if(id.length < 5) {
					err_message('id', '5자 이상의 ID를 입력하세요')
			} else if(id.length > 20) {
					err_message('id', '20자 이하의 ID를 입력하세요')
			} else {	
				if(id.search(/[^a-zA-Z0-9]/) + 1) {
					err_message('id', '영문 또는 숫자로만 이루어진 ID를 입력하세요')
				}
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * tryfindpw이 true면 오류 필드 중 가장 위 필드를 포커스하고 중지 * * * * *
			if(tryfindpw) {
				$('span').each(function(i, e) {
                    if($(e).text()) {	$(e).prev('input').focus();	return false;		};
                });
				return;
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
			$.ajax({
				type: 'post',
				data: 'id=' + id,
				url: '/jeju/login/findpw.bit',
				success: function(value) {
					console.log(value);
					if(value == 'found id') {
						location.href = '/jeju/login/findpw/answer.bit?id=' + id;
					}
					if(value == 'no id') {
						$('#errid').text('등록되지 않은 아이디입니다.');
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
			<h2>비밀번호 찾기</h2>
			<p>비밀번호를 찾으려는 아이디를 입력하세요.</p>
		</div>
		<div>
			<div>
				<label for="id">아이디 (영문, 숫자 조합 5자 이상)</label>
				<input type="text" id="id" class="default_input" name="id"/>
				<span id="errid"></span>
			</div>
			<div>
				<button type="button" id="btnfindpw">비밀번호 찾기</button>
			</div>
		</div>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>