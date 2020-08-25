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
	.modal {
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
		position: fixed;
	}
	.modal_layer {
		background-color: rgba(0, 0, 0, 0.3);
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		position: absolute;
	}
	.modal_content {
		background-color: white;
		text-align: center;
		padding: 5px 50px;
		width: 30%;
		height: 50%;
		position: relative;
		border-radius: 10px;
		box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
	}
	.modal_content > p {
		width: 100%;
		height: 60%;
		overflow-y: auto;
		align-items: center;
		margin: 10px 0px;
	}
	.hidden {
		display: none;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// * * * * * 블록 변수 * * * * *
		var tryfindid = false;
		// * * * * * * * * * * * * * * *
		
		// * * * * * 각 필드별 에러메시지 출력 함수 * * * * *
		var err_message = function(field, message) {
			$('#err' + field).text(message);	
			$('#' + field).addClass('change_input');	
			tryfindid = true;	// true면 post 실행하지 않음
		}
		// * * * * * * * * * * * * * * * * * * * * * * * * *
		
		function checkFindId() {
			// * * * * * 에러 메시지 및 값 초기화 * * * * *
			$('span').text('');
			$('input').removeClass('change_input').removeClass('change_check');
			tryfindid = false;
			
			var name = $('#name').val();
			var tel = $('#tel').val();
			var email = $('#email').val();
			// * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * 필드 별 유효성 검증 및 에러메시지 출력 함수 실행 * * * * *
			if(name == '') {	
				err_message('name', '이름을 입력하세요');	
			} else if(name.length > 6) {
				err_message('name', '6자 이하로 입력하세요');	
			}
			
			if(tel == '') {	
				err_message('tel', '전화번호를 입력하세요');	
			} else if(tel.length > 11) {
				err_message('tel', '11자리 이하의 올바른 전화번호를 입력하세요');	
			} 
			
			if(email == '') {
				err_message('email', '이메일을 입력하세요');
			} else if(email.length > 30) { 
				err_message('email', '30자 이하의 이메일을 입력하세요');
			} else {
				var x = email.match(/(?:[A-Za-z0-9]+)\@(?:[A-Za-z0-9]+)\.(?:[A-Za-z0-9]+)/);
				console.log(x);
				if(x) {
					if(x != email) {
						err_message('email', '올바른 형식의 이메일 주소를 입력하세요');
					}
				} else {
					err_message('email', '올바른 형식의 이메일 주소를 입력하세요');
				}
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * tryfindid이 true면 오류 필드 중 가장 위 필드를 포커스하고 중지 * * * * *
			if(tryfindid) {
				$('span').each(function(i, e) {
                    if($(e).text()) {	$(e).prev('input').focus();	return false;		};
                });
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
		};
	});
</script>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	<div id="content">
		<div>
			<h2>아이디 찾기</h2>
		</div>
		<div>
			<form>
				<div>
					<label for="name">이름</label>
					<input type="text" id="name" class="default_input" name="name"/>
					<span id="errname"></span>
				</div>
				<div>
					<label for="tel">전화번호</label>
					<input type="text" id="tel" class="default_input" name="tel"/>
					<span id="errtel"></span>
				</div>
				<div>
					<label for="email">이메일</label>
					<input type="text" id="email" class="default_input" name="email"/>
					<span id="erremail"></span>
				</div>
				<div>
					<input type="checkbox" id="legal" class="default_input" name="legal">
					<label for="legal"> 이용약관 및 개인정보 처리방침에 동의합니다</label>
					<span id="errlegal"></span>
				</div>
				<div>
					<button type="button" id="btnjoin">가입</button>
				</div>
			</form>
		</div>
		<div class="modal hidden">
			<div class="modal_layer"></div>
			<div class="modal_content">
				<h3>이용약관 및 개인정보 처리방침</h3>
				<p class="legal_content">Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
				sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				 Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
				 Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
				 Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<button class="close_legal" type="button">닫기</button>
			</div>
		</div>
	</div>
	<%@ include file="template/footer.jspf" %>
</body>
</html>