<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	
	alert("상품이 삭제되었습니다.");

	$(document).ready(function(){
		
		$("#val").val("00");
		
		$(function(){
			$("#location").attr({
				'action':'products',
				'method':'POST',
				'enctype':'application/x-www-form-urlencoded'
			}).submit();
			
		});
	
	
	});
</script>
</head>
<body>
<form id="location">
<input type="hidden" id="val" name="val">
</form>
</body>
</html>