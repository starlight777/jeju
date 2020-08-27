<%@page import="com.bit.account.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 회원정보</title>
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
		var tryedit = false;
		// * * * * * * * * * * * * * * *
		
		// * * * * * 각 필드별 에러메시지 출력 함수 * * * * *
		var err_message = function(field, message) {
			$('#err' + field).text(message);	
			$('#' + field).addClass('change_input');	
			tryedit = true;	// true면 post 실행하지 않음
		}
		// * * * * * * * * * * * * * * * * * * * * * * * * *
		
		// * * * * * 취소 버튼 * * * * *
		document.querySelector("#cancel").addEventListener('click', function() {
			location.href = '/jeju/login.bit';
		})
		// * * * * * * * * * * * * * * *
		
		// * * * * * 수정 버튼 * * * * *
		document.querySelector('form').addEventListener('submit', function(e) {
			// * * * * * 에러 메시지 및 값 초기화 * * * * *
			$('span').text('');
			$('input').removeClass('change_input').removeClass('change_check');
			
			var pw = $('#pw').val();
			var pwcheck = $('#pwcheck').val();
			// * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * 필드 별 유효성 검증 및 에러메시지 출력 함수 실행 * * * * *
			if(pw == '') {	
				err_message('pw', '비밀번호를 입력하세요');
			} else {
				if(pw.length < 8) {
					err_message('pw', '8자 이상의 비밀번호를 입력해주세요');
				} else if(pw.length > 20){
					err_message('pw', '20자 이하의 비밀번호를 입력해주세요');
				} else {
					if(!((pw.search(/[a-zA-z]/) + 1) && 
							(pw.search(/[0-9]/) + 1) && 
							(pw.search(/[^a-zA-z0-9]/) + 1))) {
						err_message('pw', '영문, 숫자, 특수문자로 조합된 비밀번호를 입력하세요');
					}
				}
			}
			
			if(pwcheck == '' || pw != pwcheck) {	
				err_message('pwcheck', '입력한 비밀번호와 동일한 비밀번호를 입력하세요');	
			}
			
			// * * * * * tryedit이 true면 오류 필드 중 가장 위 필드를 포커스하고 중지 * * * * * 
			if(tryedit) {
				$('span').each(function(i, e) {
                    if($(e).text()) {	$(e).prev('input').focus();	return false;		};
                });
				e.preventDefault();
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
		});
	})
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>새 비밀번호 설정</h2>
	<div>
		<form method="post">
			<div>
				<label for="id"></label>
				<input type="text" name="id" id="id" value="${ findpw_id }" hidden="hidden" readonly>
			</div>
			<div>
				<label for="pw">새 비밀번호 (영문, 숫자, 특수문자 포함 최소 8자)</label>
				<input type="password" name="pw" id="pw" class="default_input">
				<span id="errpw"></span>
			</div>
			<div>
				<label for="pwcheck">새 비밀번호 확인</label>
				<input type="password" name="pwcheck" id="pwcheck" class="default_input">
				<span id="errpwcheck"></span>
			</div>
			<div>
				<button type="submit" id="btnedit">새 비밀번호 설정</button>
				<button type="button" id="cancel">취소</button>
			</div>
		</form>
	</div>
	<% request.getSession().removeAttribute("findpw_id"); %>
<%@ include file="template/footer.jspf" %>
</body>

</html>