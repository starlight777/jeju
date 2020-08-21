<%@page import="com.bit.std.model.StdDto"%>
<%@page import="com.bit.course.model.CourseDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BitCamp Jeju</title>
<link rel="stylesheet" type="text/css" href="/jeju/css/frame.css"/>
<script type="text/javascript" src="/jeju/js/jquery-1.12.4.js"></script>
<style type="text/css">
	#section {
		width: 15%;
		height: 80%;
		float: left;
		display: inline-block;
		background-color: white;
		border: 1px solid black;
	}
	
	#section>ul {
		list-style: none;
	}
	
	#section>ul>li {
		margin: 10px;
		margin-top: 30px;
		margin-bottom: 40px;
		text-align: center;
	}
	
	#section>ul>li>a {
		color: black;
		margin: 0px auto;
		display: inline-block;
		text-decoration: none;
		text-align: center;
		line-height: 40px;
		height: 40px;
		width: 70%;
		border-radius: 10px;
		border: 1px solid black;
		font-size: 14px;
	}
	
	#section>ul>li>a:hover {
		border: 1px solid pink;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	/* $('#cntassign').text($('input:checked').length + '/' + $('input:checkbox').length); */
	$('#cntassign').text($('input:checked').length + '/ 30');
	$('input:checkbox').each(function(i, e) {
		$(this).on('click', function() {
			/* $('#cntassign').text($('input:checked').length + '/' + $('input:checkbox').length); */
			if($('input:checked').length > 30) {
				$('input:checkbox:not(:checked)').each(function(i, e) {
					$(this).attr('disabled', true);
				});
				$('#cntassign').text($('input:checked').length + '/ 30 : 새로운 학생을 배정하려면 배정한 학생을 취소하세요');
			} else {
				$('input:checkbox:not(:checked)').each(function(i, e) {
					$(this).attr('disabled', false);
				});
				$('#cntassign').text($('input:checked').length + '/ 30');
			}
		});
	});
	$('#btnassign').on('click', function() {
		var assignList = [];
		var cancelList = [];
		$('.student').each(function() {
			var student = $(this);
			if($(student).children().eq(0).text().trim().endsWith('L02') && $(student).children().eq(2).prop('checked')) {
				assignList.push($(student).children().eq(0).text().trim().substr(0, $(student).children().eq(0).text().trim().search(',')));
			} else if($(student).children().eq(0).text().trim().endsWith('L03') && !($(student).children().eq(2).prop('checked'))) {
				cancelList.push($(student).children().eq(0).text().trim().substr(0, $(student).children().eq(0).text().trim().search(',')));
			}
		});
		/* $('input:checked').each(function(i, e) {
			console.log(e.id); 
			assignList.push(e.id);
		}); */
		$.ajax({
			/* url : document.URL.substring(0,document.URL.indexOf('?')), */
			method : 'POST',
			traditional : true,
			data : {'assignList' : assignList, 'cancelList' : cancelList},
			dataType: 'text',
			success: function(message) {
				console.log(message);
				if(message.search("assign")) {
					var regex = /, L02/;
					for(var i = 0; i < assignList.length; i++) {
						var student = assignList[i];
						console.log("assign : " + student);
						$('.student').each(function() {
							console.log("assign each" + student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(',')))
							if(student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(','))) {
								$(this).children().eq(0).text($(this).children().eq(0).text().replace(regex, ', L03'));
							}
						});
					}
					$('#resultassign').text('Something');
				}
				if(message.search("cancel")) {
					var regex = /, L03/;
					for(var i = 0; i < cancelList.length; i++) {
						var student = cancelList[i];
						console.log("cancel : " + student);
						$('.student').each(function() {
							console.log("cancel each" + student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(',')))
							if(student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(','))) {
								$(this).children().eq(0).text($(this).children().eq(0).text().replace(regex, ', L02'));
							}
						});
					}
					$('#resultassign').text('Something');
				}
				if("nothing" == message) {
					$('#resultassign').text('Nothing happened');
				}
			}
		});
	});
	});
</script>

</head>
<body>
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
		<div id="content">
			<h2>수강신청현황</h2>
			<div>
			<% 
			ArrayList<Object> list = (ArrayList<Object>) request.getAttribute("list"); 
			for(int i = 0; i < list.size(); i++) {
				if(i == 0) {
					String prof = (String) list.get(i);
			%>
				<div><%= prof %></div>
					
			<%		
				} else if(i == 1) {
					CourseDto bean = (CourseDto) list.get(i);
			%>
				<div><%= bean.getCno() %>, <%= bean.getCtitle() %>, <%= bean.getCbegin() %></div>
					
			<%
				} else {
					StdDto bean = (StdDto) list.get(i);
					
						
			%>
				<div class="student">
					<span><%= bean.getId() %>, <%= bean.getSno() %>, <%= bean.getName() %>, <%= bean.getTel() %>, <%= bean.getLvl() %></span>
					<label for="<%= bean.getSno() %>"></label>
					<input type="checkbox" id="<%= bean.getSno() %>" name="<%= bean.getSno() %>" <% if("L03".equals(bean.getLvl())) out.print("checked=true"); %>>
				</div>
			<%
				}
			}
			%>
			</div>
			<div><span id="cntassign"></span></div>
			<div><button type="button" id="btnassign">저장</button><span id="resultassign"></span></div>
		</div>
		<div id="footer">
			<address>비트캠프 제주특별자치도 서귀포시 강정동 736</address>
			(주)비트컴퓨터 제주점<br /> Copyright &copy; 비트캠프 All rights reserved.
		</div>
	</div>
</body>
</html>