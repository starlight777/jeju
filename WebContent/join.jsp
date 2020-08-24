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
		$('#btnjoin').on('click', function() {
			$('span').text('');
			$('input').removeClass('change_input').removeClass('change_check');
			var tryjoin = false;
			
			var id = $('#id').val();
			var pw = $('#pw').val();
			var pwcheck = $('#pwcheck').val();
			var answer = $('#answer').val();
			var name = $('#name').val();
			var tel = $('#tel').val();
			var email = $('#email').val();
			var legal = $('#legal').prop("checked");
			
			if(id == '') {	$('#errid').text('아이디를 입력하세요');	$('#id').addClass('change_input');	tryjoin = true;	} 
			if(pw == '') {	$('#errpw').text('비밀번호를 입력하세요');	$('#pw').addClass('change_input');	tryjoin = true;	}
			if(pwcheck == '' || pw != pwcheck) {	$('#errpwcheck').text('비밀번호가 일치하지 않습니다');	$('#pwcheck').addClass('change_input');	tryjoin = true;	}
			if(answer == '') {	$('#erranswer').text('비밀번호 찾기 답을 입력하세요');	$('#answer').addClass('change_input');	tryjoin = true;	} 
			if(name == '') {	$('#errname').text('이름을 입력하세요');	$('#name').addClass('change_input');	tryjoin = true;	} 
			if(tel == '') {	$('#errtel').text('전화번호를 입력하세요');	$('#tel').addClass('change_input');	tryjoin = true;	} 
			if(email == '') {	$('#erremail').text('이메일을 입력하세요');	$('#email').addClass('change_input');	tryjoin = true;	} 
			if(legal == false) {	$('#errlegal').text('이용약관 및 개인정보 처리방침에 동의해주세요');	$('#legal').addClass('change_check');	tryjoin = true;	} 
			
			if(tryjoin) {
				$('span').each(function(i, e) {
                    if($(e).text()) {	$(e).prev('input').focus();	return false;		};
                });
				return;
				/* if($('#errid').text()) {	$('#id').focus();	return;		}
				if($('#errpw').text()) {	$('#pw').focus();	return;		}
				if($('#errpwcheck').text()) {	$('#pwcheck').focus();	return;		}
				if($('#erranswer').text()) {	$('#answer').focus();	return;		}
				if($('#errname').text()) {	$('#name').focus();	return;		}
				if($('#errtel').text()) {	$('#tel').focus();	return;		}
				if($('#erremail').text()) {	$('#email').focus();	return;		}
				if($('#errlegal').text()) {	$('#legal').focus();	return;		} */
			}
			
			console.log(id + ', ' + pw);
			
			$.ajax({
				type: 'post',
				data: 'id=' + id + "&pw=" + pw + "&answer=" + answer + "&name=" + name + "&tel=" + tel + "&email=" + email,
				url: 'join.bit',
				success: function(value) {
					console.log(value);
					if(value == 'existed id') {
						$('#errid').text('이미 사용 중인 ID입니다. 다른 ID를 입력하세요');
					}
					if(value == 'join') {
						location.href = 'welcome.bit';
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
	<h2>회원가입</h2>
	<div>
		<div>
			<label for="id">아이디 (영문, 숫자 조합 최소 5자)</label>
			<input type="text" id="id" class="default_input" name="id"/>
			<span id="errid"></span>
		</div>
		<div>
			<label for="pw">비밀번호 (영문, 한글, 특수문자 포함 최소 8자)</label>
			<input type="password" id="pw" class="default_input" name="pw"/>
			<span id="errpw"></span>
		</div>
		<div>
			<label for="pwcheck">비밀번호 확인</label>
			<input type="password" id="pwcheck" class="default_input" name="pwcheck"/>
			<span id="errpwcheck"></span>
		</div>
		<div>
			<div>비밀번호 찾기 질문: 가장 좋아하는 동물은?</div>
			<label for="answer">비밀번호 찾기 답 (한글 기준 10자 이내)</label>
			<input type="text" id="answer" class="default_input" name="answer"/>
			<span id="erranswer"></span>
		</div>
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
	</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>