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
		var type = location.search.substr(location.search.indexOf('=') + 1);
		$('#btnedit').on('click', function() {
			$('span').text('');
			$('input').removeClass('change_input').removeClass('change_check');
			var tryedit = false;
			
			var pw = $('#pw').val();
			var pwcheck = $('#pwcheck').val();
			var answer = $('#answer').val();
			var name = $('#name').val();
			var tel = $('#tel').val();
			var email = $('#email').val();
			
			if(pw == '') {	$('#errpw').text('비밀번호를 입력하세요');	$('#pw').addClass('change_input');	tryedit = true;	}
			if(pwcheck == '' || pw != pwcheck) {	$('#errpwcheck').text('비밀번호가 일치하지 않습니다');	$('#pwcheck').addClass('change_input');	tryedit = true;	}
			if(answer == '') {	$('#erranswer').text('비밀번호 찾기 답을 입력하세요');	$('#answer').addClass('change_input');	tryedit = true;	} 
			if(name == '') {	$('#errname').text('이름을 입력하세요');	$('#name').addClass('change_input');	tryedit = true;	} 
			if(tel == '') {	$('#errtel').text('전화번호를 입력하세요');	$('#tel').addClass('change_input');	tryedit = true;	} 
			if(email == '') {	$('#erremail').text('이메일을 입력하세요');	$('#email').addClass('change_input');	tryedit = true;	} 
			
			if(tryedit) {
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
			
			var data = $('input').eq(0).val();
			
			$.ajax({
				type: 'post',
				data: {'type' : type, 'data' : data},
				url: '/jeju/mypage/infoedit.bit',
				success: function(value) {
					console.log('here1');
					if(value == 'edit fail') {
						console.log('here2');
						alert("오류");
					}
					if(value == 'edit success') {
						console.log('here3');
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
	<div id="content">
		<div>
			<h2>회원 정보 수정</h2>
		</div>
		<div>
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
					label = "비밀번호 찾기 답 (한글 기준 10자 이내)";
					value = ((MemberDto) request.getAttribute("user_info")).getAnswer();
				}
			%>
				<div>
					<label for="<%= type %>"><%= label %></label>
					<input type="text" name="<%= type %>" id="<%= type %>" class="default_input" value="<%= value %>">
					<span id="err<%= type %>"></span>
				</div>
			<% 
			} else { 
			%>
				<div>
					<label for="pw">새 비밀번호 (영문, 한글, 특수문자 포함 최소 8자)</label>
					<input type="password" name="pw" id="pw" class="default_input">
					<span id="errpw"></span>
				</div>
				<div>
					<label for="pwcheck">새 비밀번호 확인</label>
					<input type="password" name="pwcheck" id="pwcheck" class="default_input">
					<span id="errpwcheck"></span>
				</div>
			<% } %>
			<div>
				<button type="button" id="btnedit">저장</button>
				<button type="button" id="cancel">취소</button>
			</div>
		</div>
	</div>					
	<%@ include file="template/footer.jspf" %>
</body>

</html>