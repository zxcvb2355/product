<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	
	

$(function(){
	
	 $("#restart").attr({
		 'action':'products',
		'method':'POST',
		'enctype':'application/x-www-form-urlencoded'
	 }).submit();
});

});

</script>
</head>
<body>
<form id="restart">
<input type="hidden" name="val" value="00">
</form>
</body>
</html>