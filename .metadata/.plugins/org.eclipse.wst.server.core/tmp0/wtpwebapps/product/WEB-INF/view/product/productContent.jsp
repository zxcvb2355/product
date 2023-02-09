<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="main.a.b.product.vo.ProductVO" %>
<%@ page import="main.a.b.common.NumUtils" %>
<%@ page import="main.a.b.common.CodeUtils" %>
<%@ page import="org.apache.log4j.LogManager" %>
<%@ page import="org.apache.log4j.Logger" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품</title>
<link rel="stylesheet" href="/resource/selectContent.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>

	const vali = /^\s+|\s+$/g; 

	$(document).ready(function(){
	
		$("#checkBtn").click(function(){
			
			
			
			if($("#pname").val().replace(vali, '' ) == "" ){
			    alert('공백만 입력할 수는 없습니다.');
			}else{
				
				let pname = $("#pname").val();
				let url = "pnameCheck";
				let method = "POST";
				let dataParam = {pname:pname,};
				
				$.ajax({
					 url:url,
					 type:method,
					 data:dataParam,
					 success:whenSuccess,
					 error:whenError
				});
			}
		
				function whenSuccess(data){
					if(data == "PNAMENOPE"){
						alert("사용가능한 물품명입니다");
						$("#insertBtn").prop('disabled', false);
						$("#dis").remove();
					}else{
						alert("이미 사용중인 물품명입니다");
						$("#pname").val("");
					}
							
					
				}
		
			
				function whenError(e){
					alert("실패함 : " + e.responseText);
					return;
				}
			
		
		});
		
		
		$("#resetBtn").click(function(){
			 
		
			 $("#val").val("00");
			 
			 let nowPage = null;
			 $("#nowPage").val(nowPage);
			 
			 
			 $("#product").attr({
				 'action':'products',
				'method':'POST',
				'enctype':'application/x-www-form-urlencoded'
			 }).submit();
	 	});
	
		$("#insertBtn").click(function(){
			
			if($("#pcontent").val() == null || $("#pcontent").val().replace(vali, '' ) == "" ){
				alert("상품 설명을 기입해주세요");
				return;
			}
			if($("#ppay").val() == null || $("#ppay").val().replace(vali, '' ) == "" ){
				alert("가격을 기입해주세요");
				return;
			}
			if($("#pcount").val() == null || $("#pcount").val().replace(vali, '' ) == "" ){
				alert("재고 수량을 기입해주세요");
				return;
			}
			
			if($("#pimage").val() == null || $("#pimage").val().replace(vali, '' ) == "" ){
				let oKey = confirm("상품 이미지가 없다면 고객들이 상품에 대한 이미지를 볼 수 없습니다. \n 그래도 등록하시겠습니까");
				if(oKey){
					
				}else{
					return false;
				}
			
			}
			
			
			let p1 = $("#p1").val();
			let pc = $("#pc").val();
			let de = $("#de").val();
			
			$("#pcategory").val(p1);
			$("#pcategory_detail").val(pc);
			$("#detail_product").val(de);
			
			$("#product").attr({
				'action':'productInsert',
				'method':'POST',
				'enctype':'multipart/form-data'				
			}).submit();
		});
	
		$("#delBtn").click(function(){
	 		
	 		
	 		let oKey = confirm("상품을 삭제하시겠습니까?");
			
	 			if(oKey){
		 			
		 			$("#product").attr({
		 	 			'action':'productDelete',
		 	 			'method':'POST',
		 	 			'enctype':'application/x-www-form-urlencoded'
		 	 		}).submit();
		 		
		 		}else{
		 			alert("취소되었습니다.");
		 		}
	 		
	 		
	 	});
		
	});
	
		function back(){
		  
			 var form = document.createElement("form");
	         form.setAttribute("charset", "UTF-8");
	         form.setAttribute("method", "POST"); 
	         form.setAttribute("action", "products"); 
		
	         var hiddenField = document.createElement("input");
	         hiddenField.setAttribute("type", "hidden");
	         hiddenField.setAttribute("name", "val");
	         hiddenField.setAttribute("value", "00");
	         form.appendChild(hiddenField);
	
	         document.body.appendChild(form);
	         form.submit();
	}
	
</script>
</head>
<body>
<%
	Logger logger = LogManager.getLogger(this.getClass());
	logger.info("selectAll 진입");

	Object obj = request.getAttribute("list");
	
	if(obj != null){
	
	List<ProductVO> list = (List<ProductVO>)obj;
	ProductVO pvo = list.get(0);
%>
<form id="product">
<br><br><br>
<h2 style="text-align:center;">상품 상세 보기</h2>

<div id="center">
				<div id="viewTable">
				<table id="selectContent">
					
					
					<tr>
						<td rowspan="3">
							<div class="imgSelect" style="width:200px; height:200px;">
								<img src="/img/<%=pvo.getPimage()%>" id="recipeImg" name="recipeImg" style="width:200px; height:200px;"/>
							
							</div>
						</td>
					</tr>
					
					<tr class="subjectTr"> 
						<td class="selectTd subjectTd">
							<p><%=pvo.getPname() %></p>
							<div id="hrDiv"></div>
						</td>
					</tr>
					
						<td class="selectTd infoTd" colspan="2">
						<%=pvo.getPcontent() %>
							
							
							<div class="oneTd">
							<br><br><br><br><br><br>
								<table style="text-align:center;">
									<tr>
										<td class="nameTd">
										가격
										</td>
									</tr>
									<tr>
										<td class="valTd">
											<%=NumUtils.comma(pvo.getPpay()) %>원
										</td>
									</tr>
									<tr>
									<td><br><br><br><br>
									<input type="hidden" name="check" value="<%=pvo.getPname() %>">
									<input type="button" id="resetBtn" value="상품 목록 가기"><td  colspan='5' style="text-align:right;"></td>
									<td><br><br><br><br><input type="button" id="delBtn" value="상품 삭제"></td>
									</tr>
								</table>					
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="oneTd">
							
							<br><br><br><br><br><br>
								<table>
								
									<tr>
									
										<td class="nameTd">
										재고
										</td>
									</tr>
									<tr>
										<td class="valTd">
											<%=CodeUtils.inttoText(pvo.getPcount()) %>
										</td>
									</tr>
								</table>
							</div>	
						</td>	
					</tr>		
				</table>
				</div>
				</div>
				</form>
				
<%
	}else{
%>
<form id="product">
<br><br><br>
<h2 style="text-align:center;">상품 등록</h2><br><br>
<table border="1" align="center">
	<tr>
		<td>상품명</td>
		<td><input type="text" id="pname" name="pname" placeholder="물품명 기입"><input type="button" id="checkBtn" value="물품명 중복확인"></td>
	</tr>
	<tr>
		<td>상품설명</td>
		<td><textarea id="pcontent" name="pcontent" placeholder="상품 설명 기입"></textarea>
		</td>
	</tr>
	<tr>
		<td>상품가격</td>
		<td><input type="text" id="ppay" name="ppay" placeholder="가격 기입"></td>
	</tr>
	<tr>
		<td>재고수량</td>
		<td><input type="text" id="pcount" name="pcount" placeholder="재고 수량 기입"></td>
	</tr>
	<tr>
		<td>분류</td>
		<td><select id="p1">
				<option value="01" id="pcate1" selected>남성</option>
				<option value="02" id="pcate2">여성</option>
			</select>
			<select id="pc">
				<option value="01" id="pcate_d1" selected>샴푸</option>
				<option value="02" id="pcate_d2">로션</option>
			</select>
			<select id="de">
				<option value="01" id="detail_p2" selected>천연</option>
				<option value="02" id="detail_p3">모공 축소</option>
				<option value="03" id="detail_p4">향기</option>
				<option value="04" id="detail_p5">기타</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>이미지</td>
		<td><input type="file" id="pimage" name="pimage" value="파일 찾아보기"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:left;"><input type="button" id="backBtn" value="상품 목록 가기" onclick="back()">
		<input type="button" id="insertBtn" value="상품 등록" disabled><font style="color:red;font-size:2px;" style="text-align:left;" id="dis">물품명 중복확인 시 해제됩니다.</font>
		</td>
	</tr>
</table>
<% 		
	}
%>
	<input type="hidden" name="pnum" id="pnum" value="" />
	<input type="hidden" id="val" name="val" value="">
	<input type="hidden" id="pcategory1" name="pcategory" value="">
	<input type="hidden" id="pcategory_detail" name="pcategory_detail" value="">
	<input type="hidden" id="detail_product" name="detail_product" value="">
	<input type="hidden" id="nowPage" name="nowPage" value="">
</form>
</body>
</html>