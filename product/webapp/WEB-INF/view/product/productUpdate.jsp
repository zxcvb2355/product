<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String nope = (String)request.getAttribute("nope");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	
	$(document).ready(function(){
		
	if("<%=nope%>" == "실패"){
		alert("예기치 못한 문제로 목록에서 지워지지 않았습니다.");
	}else{
		alert("목록에서 제외되었습니다.");
	}	
	
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