<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.bit.std.model.V_stdDto" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gedit</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
<style type="text/css">
	#content table{
		border-collapse: collapse;
	}
	#content table tr{
	}
	#content table tr th{
		border: 1px solid grey;
	}
	#content table tr td{
		border: 1px solid grey;
	}
	input{
		border: none;
	}
</style>
<script type="text/javascript">
	$(function(){
		$('#gr1,#gr2,#gr3').prop('readonly',true);
		$('form').one('submit',function(){
			$('#gr1,#gr2,#gr3').prop('readonly',false);
			$('form').find('input').css('border','2px solid red');
			$('form').find('button').eq(0).text('수정완료');
			$('form').find('button').eq(1).text('수정취소');
			return false;			
		});
	});

</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<h2>${std.sno}번&nbsp;${std.name} 성적 입력</h2>
<form method="post">
	<div>
		<label for="gr1">성적-Java</label>
		<input type="text" name="gr1" id="gr1" value="${std.gr1 }"/>
	</div>
	<div>
		<label for="gr2">성적-web</label>
		<input type="text" name="gr2" id="gr2" value="${std.gr2 }"/>
	</div>
	<div>
		<label for="gr3">성적-framework</label>
		<input type="text" name="gr3" id="gr3" value="${std.gr3 }"/>
	</div>
	<div>
		<button type="submit">수정</button>
		<button type="reset">취소</button>
		<button type="button" onclick="history.back();">뒤로</button>
	</div>
</form>

<%@ include file="template/footer.jspf" %>
</body>
</html>