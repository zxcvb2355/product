<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

	$(document).ready(function(){
		
		$("#insertBtn").click(function(){
			
			$("#insert").attr({
				'action':'memInsert',
				'method':'POST',
				'enctype':'application/x-www-form-urlencoded'
				
			}).submit();
			
		});
		
	});



</script>
</head>
<body>
<br><br>
<h3>회원가입</h3>
<br><br>
<form id="insert">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" id="mname" name="mname" placeholder="이름 기입"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" id="mid" name="mid" placeholder="아이디 기입"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" id="mpw" name="mpw" placeholder="비밀번호 기입"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" id="memail" name="memail" placeholder="메일 기입"></td>
		</tr>
		<tr>
			<td><input type="button" id="insertBtn" value="회원가입"></td>
		</tr>
	
	</table>
</form>
</body>
</html>