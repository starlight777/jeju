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
#content table{
	width: 500px;
	text-align: left;
}
#content table tr{
	border: none;
}
#content table tr th{
/* 	width: 500px; */
	text-align: left;
	background-color: white;
	border: none;
}
#content table tr td{
/* 	width: 200px; */
	text-align: left;
	background-color: white;
	border: none;
}
#errpw,#errpwcheck{
	color: #81d8d0;
}
#content label{
	width: 500px;
	height: 50px;
	font-size: 16px;
	text-align: left;
}
#content input{
  	border: none;
 	background-color: #81d8d04a;
 	width: 500px;
 	width: 500px;
 	height: 40px;
 	font-size: 20px;
}
#content input:focus{outline:none;}
#content span>a{
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// * * * * * 블록 변수 * * * * *
		var tryedit = false;
		var type = location.search.substr(location.search.indexOf('=') + 1);
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
			location.href = '/jeju/mypage/info.bit';
		})
		// * * * * * * * * * * * * * * *
		
		// * * * * * 수정 버튼 클릭 시 이벤트 * * * * *
		$('#btnedit').on('click', function() {
			// * * * * * 에러 메시지 초기화 * * * * *
			$('span').text('');
			$('input').removeClass('change_input').removeClass('change_check');
			// * * * * * * * * * * * * * * * * * * * * * * * * *
			
			if(type == 'pw') {
				var pw = $('#pw').val();
				var pwcheck = $('#pwcheck').val();
				
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
			} else if('answer' == type) {
				var answer = $('#answer').val();
				if(answer == '') {	
					err_message('answer', '비밀번호 찾기 답을 입력하세요');
				} else if(answer.length > 10) {
					err_message('answer', '10자 이하로 입력하세요');
				}
			} else if('name' == type) {
				var name = $('#name').val();
				if(name == '') {	
					err_message('name', '이름을 입력하세요');	
				} else if(name.length > 6) {
					err_message('name', '6자 이하로 입력하세요');	
				}
			} else if('tel' == type) {
				var tel = $('#tel').val();
				if(tel == '') {	
					err_message('tel', '전화번호를 입력하세요');	
				} else if(tel.length > 11) {
					err_message('tel', '11자리 이하의 올바른 전화번호를 입력하세요');	
				} 
			} else if('email' == type) {
				var email = $('#email').val();
				if(email == '') {
					err_message('email', '이메일을 입력하세요');
				} else if(email.length > 30) { 
					err_message('email', '30자 이하의 이메일을 입력하세요');
				} else {
					var x = email.match(/(?:[A-Za-z0-9]+)\@(?:[A-Za-z0-9\.]+)(?:[A-Za-z]+)/);
					console.log(x);
					if(x) {
						if(x != email) {
							err_message('email', '올바른 형식의 이메일 주소를 입력하세요');
						}
					} else {
						err_message('email', '올바른 형식의 이메일 주소를 입력하세요');
					}
				}
			} else {
				location.href = "/jeju";
			}
			
			// * * * * * tryedit이 true면 오류 필드 중 가장 위 필드를 포커스하고 중지 * * * * * 
			if(tryedit) {
				$('span').each(function(i, e) {
                    if($(e).text()) {	$(e).prev('input').focus();	return false;		};
                });
				return;
			}
			// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * post로 update 실행할 data 선언 * * * * *
			var data = $('input').eq(0).val();
			// * * * * * * * * * * * * * * * * * * * * * * * * *
			
			// * * * * * tryedit이 false면 ajax 실행 * * * * *
			$.ajax({
				type: 'post',
				data: {'type' : type, 'data' : data},
				url: '/jeju/mypage/infoedit.bit',
				success: function(value) {
					/* console.log('here1'); */
					if(value == 'edit fail') {
						/* console.log('edit fail'); */
						alert("오류");
					}
					if(value == 'edit success') {
						/* console.log('edit success'); */
						location.href = '/jeju/mypage/info.bit';
					}
				}
			})
		})
	})
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>회원 정보 수정</h2>
	<table>
		<% 
		String type = request.getParameter("type");
		if(!type.equals("pw")) {
			String label = null;
			String value = null;
			if("name".equals(type)) {
				label = "이름";
				value = ((MemberDto) request.getAttribute("user_info")).getName();
			} else if("tel".equals(type)) {
				label = "전화번호";
				value = ((MemberDto) request.getAttribute("user_info")).getTel();
			} else if("email".equals(type)) {
				label = "이메일";
				value = ((MemberDto) request.getAttribute("user_info")).getEmail();
			} else if("answer".equals(type)) {
				label = "비밀번호 찾기 답 (10자 이하)";
				value = ((MemberDto) request.getAttribute("user_info")).getAnswer();
			}
		%>
			<tr><th><label for="<%= type %>"><%= label %></label></th></tr>
			<tr><td><input type="text" name="<%= type %>" id="<%= type %>" class="default_input" value="<%= value %>">
				<span id="err<%= type %>"></span></td></tr>
		<% 
		} else { 
		%>
			<tr><th><label for="pw">새 비밀번호 (영문, 한글, 특수문자 포함 8자 이상)</label></th></tr>
			<tr><td><input type="password" name="pw" id="pw" class="default_input"></td></tr>
			<tr><td><span id="errpw"></span></td></tr>
			<tr><th><label for="pwcheck">새 비밀번호 확인</label></th></tr>
			<tr><td><input type="password" name="pwcheck" id="pwcheck" class="default_input"></td></tr>
			<tr><td><span id="errpwcheck"></span></td></tr>
		<% } %>
	</table>
	<div>
		<button type="button" id="btnedit">저장</button>
		<button type="button" id="cancel">취소</button>
	</div>
<%@ include file="template/footer.jspf" %>
</body>

</html>