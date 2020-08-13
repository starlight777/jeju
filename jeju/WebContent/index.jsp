<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="template/head.jspf" %>
<style rel="stylesheet" type="text/css">
</style>
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.min.css"/>
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){

	var main = $('.slider').bxSlider({
		mode: 'fade',
		auto: true,			
		controls : true,	
		pager: true,		
		pause: 3000,
		autoDelay: 0,	
		slideWidth: 800,
		speed: 500
				
	});
  	
	$(".bx-start").hide();	
});



</script>
</head>
<body>

<%@ include file="template/header.jspf" %>
<%@ include file="template/menu.jspf" %>

<div class="slider">

        <div><img src="img/ad01.jpg" /></div>
        <div><img src="img/ad02.jpg" /></div>
        <div><img src="img/ad03.jpg" /></div>
    </div>

		
<%@ include file="template/footer.jspf" %>
</body>



</html>







