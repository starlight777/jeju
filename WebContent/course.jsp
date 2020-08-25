<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<%@ include file="template/head.jspf" %>
<script type = "text/javascript" src = "js/jquery-1.12.4.js" ></script>
<style type="text/css">
</style>
</head>
<body>
<<<<<<< HEAD
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
<jsp:useBean id = "course" class = "com.bit.course.model.CourseDto" scope = "request"/>
<h2>교육과정 디테일 페이지</h2>
<table>
	<tr>
		<th>강의번호</th>
		<td><jsp:getProperty property="cno" name="course"/></td>
	</tr>
	<tr>
		<th>강좌명</th>
		<td><jsp:getProperty property="ctitle" name="course"/></td>
	</tr>
	<tr>
		<th>개강일</th>
		<td><jsp:getProperty property="cbegin" name="course"/></td>
	</tr>
	<tr>
		<th>종강일</th>
		<td><jsp:getProperty property="cend" name="course"/></td>
	</tr>
	<tr>
		<th>수업일수</th>
		<td><jsp:getProperty property="cdays" name="course"/></td>
	</tr>
	<tr>
		<th>정원</th>
		<td><jsp:getProperty property="climit" name="course"/></td>
	</tr>
	<tr>
		<th>강의실</th>
		<td><jsp:getProperty property="croom" name="course"/></td>
	</tr>
	<tr>
		<th>강사</th>
		<td><jsp:getProperty property="prof" name="course"/></td>
	</tr>
	<tr>
		<th>영업사원</th>
		<td><jsp:getProperty property="salesno" name="course"/></td>
	</tr>
</table>
<div>
	<button type = "button" onclick="location.href = 'cedit.bit?idx=<%=course.getCno()%>'">수정</button>
	<button type = "button" onclick="location.href = 'cdel.bit?cno=<%=course.getCno()%>&ctitle=<%=course.getCtitle() %>'">삭제</button>
	<button type = "button" onclick="location.href = '../courses.bit'">뒤로가기</button>
</div>
<%@ include file="template/footer.jspf" %>
=======
	<div class="bit">
		<div id="header">
			<ul>
				<li><a href="#">강사 설민석님 로그인중</a></li>
				<li><a href="#">로그아웃</a></li>
				<li><a href="#">LMS</a></li>
			</ul>
		</div>
		<div id="menu">
			<ul>
				<li><a href="#">홈</a></li>
				<li><a href="#">학원소개</a></li>
				<li><a href="#">교육과정</a></li>
				<li><a href="#">공지사항</a></li>
			</ul>
		</div>
		<div id="section">
			<ul>
				<li><a href="#">회원정보</a></li>
				<li><a href="#">내업무</a></li>
				<li><a href="courses.bit">전체과정</a></li>
				<li><a href="#">전체학생</a></li>
				<li><a href="#">직원정보</a></li>
				<li><a href="#">공지사항관리</a></li>
			</ul>
		</div>
		<div id = "content">
<jsp:useBean id = "course" class = "com.bit.courses.model.CourseDto" scope = "request"/>
			<h2>교육과정 디테일 페이지</h2>
			<table>
				<tr>
					<th>강의번호</th>
					<td><jsp:getProperty property="cno" name="course"/></td>
				</tr>
				<tr>
					<th>강좌명</th>
					<td><jsp:getProperty property="ctitle" name="course"/></td>
				</tr>
				<tr>
					<th>개강일</th>
					<td><jsp:getProperty property="cbegin" name="course"/></td>
				</tr>
				<tr>
					<th>종강일</th>
					<td><jsp:getProperty property="cend" name="course"/></td>
				</tr>
				<tr>
					<th>수업일수</th>
					<td><jsp:getProperty property="cdays" name="course"/></td>
				</tr>
				<tr>
					<th>정원</th>
					<td><jsp:getProperty property="climit" name="course"/></td>
				</tr>
				<tr>
					<th>강의실</th>
					<td><jsp:getProperty property="croom" name="course"/></td>
				</tr>
				<tr>
					<th>강사</th>
					<td><jsp:getProperty property="prof" name="course"/></td>
				</tr>
				<tr>
					<th>영업사원</th>
					<td><jsp:getProperty property="salesno" name="course"/></td>
				</tr>
			</table>
			<button type = "button" onclick="location.href = 'cedit.bit?idx=<%=course.getCno()%>'">수정</button>
			<button type = "button" onclick="location.href = 'cdel.bit?cno=<%=course.getCno()%>&ctitle=<%=course.getCtitle() %>'">삭제</button>
			<button type = "button" onclick="history.back();">뒤로가기</button>
		</div>
		<div id="footer">
			<address>비트캠프 제주특별자치도 서귀포시 강정동 736</address>
			(주)비트컴퓨터 제주점<br /> Copyright &copy; 비트캠프 All rights reserved.
		</div>
	</div>
>>>>>>> course3
</body>
</html>