<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	alert("회원 가입 되었습니다.");
	
	$(document).ready(function(){
	
	$("#moving").attr({
		'action':'loginForm',
		'method':'POST',
		'enctype':'application/x-www-form-urlencoded'
	}).submit();

	});

</script>
</head>
<body>
<form id="moving"></form>
</body>
</html>