<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프 제주지점 : 로그인</title>
<%@ include file="template/head.jspf" %>
<style type="text/css">
#content table{
	width: 300px;
	text-align: left;
}
#content table tr{
	height: 70px;
}
#content table tr th{
	width: 100px;
	text-align: left;
	vertical-align: top;
	background-color: white;
	border: none;
	padding:8px 0;
}
#content table tr td{
	width: 200px;
	text-align: left;
	vertical-align: top;
	background-color: white;
	border: none;
}
input:-internal-autofill-selected {
 	background-color: #81d8d04a;
}
#id,#pw{
 	border: none;
 	background-color: #81d8d04a; !important;
}
#content input:focus{outline:none;}
#errid,#errpw{
	color: #81d8d0;
}
#btnlogin{
	width: 300px;
	font-size: 20px;
}
#content label{
	width: 100px;
	height: 50px;
	font-size: 20px;
	text-align: left;
}
#content input{
	width: 200px;
	height: 40px;
	font-size: 20px;
}
</style>
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
	<h2>로그인</h2>
	<table>
		<tr>
			<th><label for="id">아이디</label></th>
			<td><input type="text" id="id" name="id"/>
			<span id="errid"></span></td>
		</tr>
		<tr>
			<th><label for="pw">비밀번호</label></th>
			<td><input type="password" id="pw" name="pw"/>
			<span id="errpw"></span></td>
		</tr>
	</table>
	<button id="btnlogin">로그인</button>
	<div>
		<span><a href="login/findid.bit">아이디 찾기</a></span>
		<span><a href="login/findpw.bit">비밀번호 찾기</a></span>
		<span><a href="login/join.bit">회원가입</a></span>
	</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>