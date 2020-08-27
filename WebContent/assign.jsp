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
<%@ include file="template/head.jspf" %>
<link rel="stylesheet" type="text/css" href="/jeju/css/frame.css"/>
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
				/* console.log(message); */
				if(message.search("assign")) {
					var regex = /, L02/;
					for(var i = 0; i < assignList.length; i++) {
						var student = assignList[i];
						/* console.log("assign : " + student); */
						$('.student').each(function() {
							console.log("assign each" + student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(',')))
							if(student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(','))) {
								$(this).children().eq(0).text($(this).children().eq(0).text().replace(regex, ', L03'));
							}
						});
					}
					/* $('#resultassign').text('Something'); */
				}
				if(message.search("cancel")) {
					var regex = /, L03/;
					for(var i = 0; i < cancelList.length; i++) {
						var student = cancelList[i];
						/* console.log("cancel : " + student); */
						$('.student').each(function() {
							console.log("cancel each" + student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(',')))
							if(student == $(this).children().eq(0).text().trim().substr(0, $(this).children().eq(0).text().trim().search(','))) {
								$(this).children().eq(0).text($(this).children().eq(0).text().replace(regex, ', L02'));
							}
						});
					}
					/* $('#resultassign').text('Something'); */
				}
				if("nothing" == message) {
				}
				$('#resultassign').text('변경사항을 저장했습니다.');
			}
		});
	});
	});
</script>

</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>
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
<%@ include file="template/footer.jspf" %>
</body>
</html>