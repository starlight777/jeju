<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/template/head.jspf" %>
<style type="text/css">
	#content{}
	#content>h2{
		text-align: center;
	}
	#content>form{
		width: 500px;
		margin: 0px auto;
	}
	#content>form>div>label{
		width: 200px;
		display: inline-block;
	}
	#content>form>div{
		text-align: center;
	}
	#content>form>div:first-child~div{
		border-top:1px dotted gray;
	}
</style>
</head>
<body>	
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
	<h2>공지사항 추가</h2>
	<form action="/jeju/lms/ntc/nadd.bit" method="post" enctype="multipart/form-data">
		<div>
			<label for="ntitle">제목</label>
			<input type="text" name="ntitle" id="ntitle" />
		</div>
		<div>
			<label for="ntitle">종류</label>
			<input type="text" name="ntype" id="ntype"/>
		</div>
 		<div>
			<label for="file1">파일첨부</label>
			<input type="file" name="file1" id="file1" />
		</div> 

		<div>	
			<button type="submit">글쓰기</button>
			<button type="button" onclick="history.back();">목록으로 돌아가기</button>
		</div>
	</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>




