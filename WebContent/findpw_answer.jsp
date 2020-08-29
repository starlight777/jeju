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
		var tryAnswer = false;
		// * * * * * * * * * * * * * * *
		
		// * * * * * 각 필드별 에러메시지 출력 함수 * * * * *
		var err_message = function(field, message) {
			$('#err' + field).text(message);	
			$('#' + field).addClass('change_input');	
			tryAnswer = true;	// true면 post 실행하지 않음
		}
		// * * * * * * * * * * * * * * * * * * * * * * * * *
		
		document.querySelector('form').addEventListener('submit', function (e) {
			
			// * * * * * 에러 메시지 및 값 초기화 * * * * *
			$('span').text('');
			$('input').removeClass('change_input').removeClass('change_check');
			tryAnswer = false;
			
			var answer = $('#answer').val();
			// * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * 필드 별 유효성 검증 및 에러메시지 출력 함수 실행 * * * * *
			if(answer == '') {	
				err_message('answer', '비밀번호 찾기 답을 입력하세요');
			} else if(answer.length > 10) {
				err_message('answer', '10자 이하로 입력하세요');
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * tryAnswer이 true면 오류 필드 중 가장 위 필드를 포커스하고 중지 * * * * *
			if(tryAnswer) {
				$('span').each(function(i, e) {
                    if($(e).text()) {	$(e).prev('input').focus();	return false;		};
                });
				e.preventDefault();
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
		});
		
	});
</script>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
		<div>
			<h2>비밀번호 찾기</h2>
			<p>비밀번호 찾기 질문: 가장 좋아하는 동물은?</p>
		</div>
		<div>
			<form method="post" >
				<div>
					<label for="answer">비밀번호 찾기 답 (10자 이하)</label>
					<input type="text" id="answer" class="default_input" name="answer"/>
					<span id="erranswer"></span>
				</div>
				<div>
					<button type="submit" id="btnanswer">비밀번호 찾기</button>
				</div>
			</form>
		</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>