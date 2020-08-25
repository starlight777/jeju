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
		$('#btnleave').on('click', function() {
			$('#errpw').text('');
			var tryleave = false;
			
			var pw = $('#pw').val();
			
			if(pw == '') {
				$('#errpw').text('비밀번호를 입력하세요');
				tryleave = true;
			}
			
			if(tryleave) {
				if($('#errpw').text()) {
					$('#pw').focus();
					return;
				}
			}
			
			/* console.log(pw); */
			
			$.ajax({
				type: 'post',
				data: {'pw': pw},
				url: '/jeju/login/leave.bit',
				success: function(v) {
					/* alert(v); */
					if(v == 'wrong pw') {
						$('#errpw').text('비밀번호가 일치하지 않습니다.');
					} else {
						var table = document.createElement("form");
						document.body.appendChild(table);
						table.action = "/jeju/login/farewell.bit";
						table.method = "post";
						var input = document.createElement("input");
						input.name = "name";
						input.value = v;
						table.appendChild(input);
						table.submit();
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
	<h2>회원 탈퇴하기</h2>
	<div>
		<p>탈퇴하는 계정의 정보, 강의 수강 내역 등을 전부 삭제하며 이후에 복구할 수 없습니다. 
			계정을 삭제하려면 비밀번호를 입력하고 탈퇴합니다 버튼을 누르세요.</p>
	</div>
	<div>
		<div>
			<label for="pw">비밀번호</label>
			<input type="password" id="pw" name="pw"/>
			<span id="errpw"></span>
		</div>
		<div>
			<button type="button" id="btnleave">탈퇴합니다</button>
			<button type="button" id="cancel">취소</button>
		</div>
	</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>