<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="main.a.b.product.vo.ProductVO" %>
<%@ page import="main.a.b.common.NumUtils" %>
<%@ page import="main.a.b.common.CodeUtils" %>
<%@ page import="org.apache.log4j.LogManager" %>
<%@ page import="org.apache.log4j.Logger" %>
<%
	Logger logger = LogManager.getLogger(this.getClass());
	logger.info("selectAll 진입");

	List<ProductVO> list = (List<ProductVO>)request.getAttribute("list");

	
	
	ProductVO _pvo = (ProductVO)request.getAttribute("Paging");
	
	String minPay = "";
	String maxPay = "";
	String textMinPay = "";
	String textMaxPay = "";
	String pcategory = "";
	String pcategory_detail = "";
	String detail_product = "";
	int rowCount = Integer.parseInt(_pvo.getRowCount());
	int groupSize = Integer.parseInt(_pvo.getGroupSize());
	int nowPage = Integer.parseInt(_pvo.getNowPage());
	
		minPay = _pvo.getMinPay();
		logger.info(minPay);
	
		if(minPay != null && minPay != ""){
			textMinPay = minPay;
		}else{
			textMinPay = "0";
		}
		
		maxPay = _pvo.getMaxPay();
		logger.info(maxPay);
	
		if(maxPay != null && maxPay != ""){
			textMaxPay = maxPay;
		}else{
			textMaxPay = "0";
		}
	
	int totalCount = 0;
	totalCount = Integer.parseInt(list.get(0).getTotalCount());

	String val = (String)request.getAttribute("val");
	
	pcategory = _pvo.getPcategory();
	pcategory_detail = _pvo.getPcategory_detail();
	detail_product = _pvo.getDetail_product();
	
	String url = "products";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 소개</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

 $(document).ready(function(){
	
	 $(function(){
	 if("01" == "<%=val %>"){
		 $("#two").prop('selected', true);
	 }else  if("02" == "<%=val %>"){
		 $("#three").prop('selected', true);
	 }else  if("03" == "<%=val %>"){
		 $("#four").prop('selected', true);
	 }else  if("04" == "<%=val %>"){
		 $("#five").prop('selected', true);
	 }else{
		 $("#one").prop('selected', true);
	 }
	 
	 }); 
	 
	 $(function(){
		 if("01" == "<%=pcategory%>"){
			 $("#pcate2").prop('selected', true);
		 }else if("02" == "<%=pcategory%>"){
			 $("#pcate3").prop('selected', true);
		 }
		 
	 });
	 
	 $(function(){
		 if("01" == "<%=pcategory_detail%>"){
			 $("#pcate_d2").prop('selected', true);
		 }else if("02" == "<%=pcategory_detail %>"){
			 $("#pcate_d3").prop('selected', true);
		 }
	 });
	 
	 $(function(){
		 if("01" == "<%=detail_product%>"){
			 $("#detail_p2").prop('selected', true);
		 }else if("02" == "<%=detail_product%>"){
			 $("#detail_p3").prop('selected', true);
		 }else if("03" == "<%=detail_product%>"){
			 $("#detail_p4").prop('selected', true);
		 }else if("04" == "<%=detail_product%>"){
			 $("#detail_p5").prop('selected', true);
		 }  
		 
	 });
	 
	 
	 $("#magin").click(function(){
		 
		 if($("#magin").prop('checked', true)){
			 let val = $("#lookStyle").val();
			 
			 $("#val").val(val);
			 
			 let nowPage = null;
			 $("#nowPage").val(nowPage);
			 
			 
			 $("#product").attr({
				 'action':'productsx',
				'method':'POST',
				'enctype':'application/x-www-form-urlencoded'
			 }).submit();
			 
		 }
	
		 
	 });
	 
	 $("#lookStyle").change(function(){
		 
		 
		 
		 let val = $("#lookStyle").val();
		 console.log("val : " + val);
		 $("#val").val(val);
		 
		 let pcate = $("#pcategory").val();
		 console.log("pcate : " + pcate);
		 $("#pcategory1").val(pcate);
		 
		 let pcate_d = $("#detail").val();
		 console.log("detail : " + detail);
		 $("#pcategory_detail").val(pcate_d);
		 
		 let d_pro = $("#detail_p").val();
		 console.log("d_pro : " + d_pro);
		 $("#detail_product").val(d_pro);
		 
		 let nowPage = null;
		 $("#nowPage").val(nowPage);
		 
		 $("#product").attr({
			 'action':'products',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
		 
		 
	 });
	 
 	$("#pcategory").change(function(){
		 
		 let val = $("#lookStyle").val();
		 console.log("val : " + val);
		 $("#val").val(val);
		 
		 let pcate = $("#pcategory").val();
		 console.log("pcate : " + pcate);
		 $("#pcategory1").val(pcate);
		 
		 let pcate_d = $("#detail").val();
		 console.log("detail : " + detail);
		 $("#pcategory_detail").val(pcate_d);
		 
		 let d_pro = $("#detail_p").val();
		 console.log("d_pro : " + d_pro);
		 $("#detail_product").val(d_pro);
		 
		 let nowPage = null;
		 $("#nowPage").val(nowPage);
		 
		 $("#product").attr({
			 'action':'products',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
		 
		 
	 });
 
	 $("#detail").change(function(){
		 let val = $("#lookStyle").val();
		 console.log("val : " + val);
		 $("#val").val(val);
		 
		 let pcate = $("#pcategory").val();
		 console.log("pcate : " + pcate);
		 $("#pcategory1").val(pcate);
		 
		 let pcate_d = $("#detail").val();
		 console.log("detail : " + detail);
		 $("#pcategory_detail").val(pcate_d);
		 
		 let d_pro = $("#detail_p").val();
		 console.log("d_pro : " + d_pro);
		 $("#detail_product").val(d_pro);
		 
		 let nowPage = null;
		 $("#nowPage").val(nowPage);
		 
		 $("#product").attr({
			 'action':'products',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
		 
		 
	 });
	 $("#detail_p").change(function(){
		 let val = $("#lookStyle").val();
		 console.log("val : " + val);
		 $("#val").val(val);
		 
		 let pcate = $("#pcategory").val();
		 console.log("pcate : " + pcate);
		 $("#pcategory1").val(pcate);
		 
		 let pcate_d = $("#detail").val();
		 console.log("detail : " + detail);
		 $("#pcategory_detail").val(pcate_d);
		 
		 let d_pro = $("#detail_p").val();
		 console.log("d_pro : " + d_pro);
		 $("#detail_product").val(d_pro);
		 
		 let nowPage = null;
		 $("#nowPage").val(nowPage);
		
		 
		 $("#product").attr({
			 'action':'products',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
		 
		 
	 });
	 
	 $("#cashBtn").click(function(){
		 
		 let val = $("#lookStyle").val();
		 
		 $("#val").val(val);
		 
		 let pcate = $("#pcategory").val();
		 console.log("pcate : " + pcate);
		 $("#pcategory1").val(pcate);
		 
		 let pcate_d = $("#detail").val();
		 console.log("detail : " + detail);
		 $("#pcategory_detail").val(pcate_d);
		 
		 let d_pro = $("#detail_p").val();
		 console.log("d_pro : " + d_pro);
		 $("#detail_product").val(d_pro);
		 
		 let nowPage = null;
		 $("#nowPage").val(nowPage);
		 
		 $("#product").attr({
			 'action':'products',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
		 
		 
	 });
	 
	 $("#resetBtn").click(function(){
		 
		let val = $("#lookStyle").val();
		
		$("#minPay").val("");
		$("#maxPay").val("");
		 
		 $("#val").val(val);
		 
		 let nowPage = null;
		 $("#nowPage").val(nowPage);
		 
		 
		 $("#product").attr({
			 'action':'products',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
	 });
 
 
 	$(".productClick").click(function(){
 		
 		let pnum = $(this).siblings().get(0).value;
 		console.log(pnum);
 		
 		$("#pnum").val(pnum);
 		$("#gubun").val("select");
 		
 		 $("#product").attr({
			 'action':'product',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
 		
 	});
 
 
 	$(document).on('click', '#check', function(){
		
		if($(this).prop('checked')) {
		console.log("체크박스 함수 진입");
			$(".check").prop('checked', false);
			$(this).prop('checked', true);
		}
		
	});
 	
 	$("#deleteBtn").click(function(){
 		
 		let password = prompt("비밀번호를 입력해주세요")
 		 
	 		if(password == "1234"){
	 			if($(".check:checked").length==0){
					alert("매진된 상품 중 하나를 체크해주세요");
					return;
				}
		 		
	 			let check = $("#check:checked").val();
		 		console.log(check);
		 	
		 		let url = "checkCount";
		 		let method = "POST";
		 		let dataParam={ pname: check, };
		 		
		 		$.ajax({
		 			 url:url,
					 type:method,
					 data:dataParam,
					 success:whenSuccess,
					 error:whenError
		 		});
 				
		 	 		 
 			 	}else{
 			 		alert("관리자 비밀번호를 입력해주세요");
 			 	}
		 		
		 		function whenSuccess(data){
		 			if(data == "countZero"){
		 				let oKey = confirm("선택된 매진 상품을 목록에서 지우시겠습니까? \n지운 상품은 목록에서 보이지 않게 됩니다.");
		 			 	if(oKey){
		 			 		
		 			 		 $("#product").attr({
		 						 'action':'productUpdate',
		 						'method':'POST',
		 						'enctype':'application/x-www-form-urlencoded'
		 					 }).submit();
		 			 		 
		 			 	}else{
		 			 		alert("취소되었습니다");
		 		 		}
			 			
		 			}else if(data == "notCountZero"){
		 				alert("매진된 상품이 아닙니다");
		 				return;
		 			}
		 		}
		 		function whenError(e){
					alert("실패함 : " + e.responseText);
					return;
				}
 		
		 	
 	});
 	
 	let date = new Date();
	let ymd = "" + date.getFullYear() + (('0' + (date.getMonth() +1)).slice(-2)) + (('0' + (date.getDate())).slice(-2));
	console.log(ymd);
	
	let hm = baseTime();
	console.log(baseTime());
 	
 	let url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst?serviceKey=hwNs%2FusueAUixJQYpKUbBkL7fqiFsSR%2Bco9h8thIFzsiLorGrzadUQ9Ng7qCoJSGcIogT3BSXWX1mfpF5%2Bv24g%3D%3D&numOfRows=10&pageNo=1&base_date="
		+ ymd + "&base_time=" + hm + "&nx=61&ny=126&dataType=JSON";

// 단기예보 문서 참고 : 강수 코드값
let weather_icon = {
		'0' : 'http://www.weather.go.kr/images/icon/NW/NB01.png',
		'1' : 'http://www.weather.go.kr/images/icon/NW/NB08.png',
		'2' : 'http://www.weather.go.kr/images/icon/NW/NB12.png',
		'3' : 'http://www.weather.go.kr/images/icon/NW/NB11.png',
		'5' : 'http://www.weather.go.kr/images/icon/NW/NB20.png',
		'6' : 'http://www.weather.go.kr/images/icon/NW/NB22.png',
		'7' : 'http://www.weather.go.kr/images/icon/NW/NB21.png'
	};

// 단기예보 문서 참고 : 강수 코드값
let weather_stat = {
		'0' : '맑음',
		'1' : '비',
		'2' : '비 또는 눈',
		'3' : '눈',
		'5' : '가끔 비',
		'6' : '가끔 비 또는 눈',
		'7' : '가끔 눈'
		
};

$.ajax({
	url: url,
	type: "GET",
	dataType: "json",
	success: function(data){
		
		console.log(data);
		
		// 발표 시간
		let base_date = data['response']['body']['items']['item'][0]['baseDate'];
		let base_time = data['response']['body']['items']['item'][0]['baseTime'];
		
		// 강수형태 없음(0), 비(1), 비/눈(2), 눈(3), 빗방울(5), 빗방울눈날림(6), 눈날림(7) 
		let pty_category = data['response']['body']['items']['item'][0]['category'];
		let pty_obsrValue = data['response']['body']['items']['item'][0]['obsrValue'];
		
		// 습도 단위  %
		let reh_category = data['response']['body']['items']['item'][1]['category'];
		let reh_obsrValue = data['response']['body']['items']['item'][1]['obsrValue'];
		
		// 기온 단위 ℃
		let t1h_category = data['response']['body']['items']['item'][3]['category'];
		let t1h_obsrValue = data['response']['body']['items']['item'][3]['obsrValue'];
		
		
		let date_div = document.querySelector("#date");
		date_div.innerText = dateFormat(base_date);
		
		let time_div = document.querySelector("#time");
		time_div.innerText = timeFormat(base_time);
		
		let icon_div = document.querySelector("#icon");
		icon_div.innerHTML = "<img id='imgtemp' src='" + weather_icon[pty_obsrValue] + "'>" + weather_stat[pty_obsrValue];
		
		let temp_div = document.querySelector("#temp");
		temp_div.innerText = t1h_obsrValue + " ℃";
		
		let reh_div = document.querySelector("#reh");
		reh_div.innerText = reh_obsrValue + "%";
		
	}

});

function dateFormat(yyyymmdd){
	let mmdd = yyyymmdd.substr(4);
	let mm = mmdd.substr(0,2);
	let dd = mmdd.substr(2);
	mmdd = mm + "월" + dd + "일";
	return mmdd;
}

function timeFormat(hhmm){
	let hh = hhmm.substr(0,2);
	let mm = hhmm.substr(2);
	hhmm = hh + "시" + mm + "분";
	return hhmm;
}

// base_time : API에서 매시 40분 이후로 최신 정보가 갱신됨.
function baseTime(){
	let hm = "";
	if (date.getMinutes() > 40){
		hm = ('0' + date.getHours()).slice(-2) + '00';
	}else{
		hm = ('0' + (date.getHours() - 1)).slice(-2) + '00';
	}
	return hm;
}


function numpad(date){
	date = date.toString();	
	
	if(date.length == 1){
		
		date = "0" + date;
	}else {
		date = date;
	}	
	return date;
}
 	
 	$("#insertBtn").click(function(){
 		
 		$("#gubun").val("insert");
 		
 		 $("#product").attr({
			 'action':'product',
			'method':'POST',
			'enctype':'application/x-www-form-urlencoded'
		 }).submit();
 			
 	});
 	
 	$("#delBtn").click(function(){
 		
 		if($(".check:checked").length==0){
			alert("상품 중 하나를 체크해주세요");
			return;
 		}else{
 		
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
 		
 		}
 	});
 	
 	$("#loginBtn").click(function(){
 		
 		$("#product").attr({
 			'action':'loginForm',
 			'method':'POST',
 			'enctype':'application/x-www-form-urlencoded'
 			
 		}).submit();
 	});
 	
 });






</script>
<style>

.link{
		margin:2px;
		list-style-type:none;
		float:left;
		padding:9px 15px 9px 15px;
		border:1px solid #ebebeb; 
		}
	.hi{
		color:#888;
		text-decoration: none;
		font-weight: 500;
	}

	.hello{
	color:#ff5e5e;
		text-decoration: none;
		
	}
	#list{
		text-align:center;
		
	}
	#block{
	display:inline-block;
	}
	#image{
		width:100px;
		height:100px;
		border-radius:15px;
	}
	.productClick{
		width:200px;
	}
	
	ul {
	
	list-style	: none;
}


a {
	
	color	: #000;
	
	text-decoration	: none;
}
	

	
</style>
</head>
<body>
<form id="product" name="product">
<div class="container">
<br><br>
<input type="button" id="loginBtn" name="loginBtn" value="로그인하러 가기">
<h2 style="text-align:center;">상품 소개</h2>
<br><br>
<table>
<tr>
<td>
<select id="lookStyle" style="width:160px;">
	<option value="00" id="one" selected>선택</option>
	<option value="01" id="two">가격 높은 순</option>
	<option value="02" id="three">가격 낮은 순</option>
	<option value="03" id="four">상품명 오름차순</option>
	<option value="04" id="five">상품명 내림차순</option>
</select>
</td>
<td style="width:100%; text-align:right;" >가격 검색 : &nbsp;
<input type="text" name="minPay" id="minPay" value="<%=NumUtils.comma(Integer.parseInt(textMinPay))%>" style="width:80px; text-align:right;">&nbsp;원&nbsp;&nbsp;~&nbsp;&nbsp;
<input type="text" name="maxPay" id="maxPay" value="<%=NumUtils.comma(Integer.parseInt(textMaxPay))%>" style="width:80px;text-align:right;">&nbsp;원&nbsp;&nbsp;&nbsp;
<input type="button" id="cashBtn" value="검색" style="text-align:right;">&nbsp;
<input type="button" id="resetBtn" value="초기화" style="text-align:right;">
<input type="button" id="deleteBtn" value="상품 제외">

</td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td><br></td>
</tr>
<tr>
<td></td>
</tr>
<tr><td>
<input type="checkbox" id="magin">매진 항목 제외하기
</td>
<td style="text-align:right;">
<select id="pcategory" >
	<option value="00" id="pcate1" selected>전체</option>
	<option value="01" id="pcate2">남성</option>
	<option value="02" id="pcate3">여성</option>
</select>
<select id="detail" >
	<option value="00" id="pcate_d1" selected>전체</option>
	<option value="01" id="pcate_d2">샴푸</option>
	<option value="02" id="pcate_d3">로션</option>
</select>
<select id="detail_p" >
	<option value="00" id="detail_p1" selected>전체</option>
	<option value="01" id="detail_p2">천연</option>
	<option value="02" id="detail_p3">모공 축소</option>
	<option value="03" id="detail_p4">향기</option>
	<option value="04" id="detail_p5">기타</option>
</select>
</td>
</tr>
</table>
<table class="table table-hover">
	<tr style="text-align:center;">
		<td></td>
		<td>이미지</td>
		<td>상품명</td>
		<td>가격</td>
		<td>재고</td>
	</tr>
<%

	for(int i=0; i < list.size(); i++){
		ProductVO pvo = list.get(i);
		
		
%>
	<tr>
		<input type="hidden" name="pnm" id="pnm" value="<%=pvo.getPnum() %>" />
		<td style="text-align:center;"><input type="checkbox" id="check" class="check" name="check" value="<%=pvo.getPname() %>"></td>
		<td style="text-align:center;"><img src="/img/<%=pvo.getPimage()%>" id="image"></td>
		<td style="text-align:center;" class="productClick"><%=pvo.getPname() %></td>
		<td style="text-align:right;"><%=NumUtils.comma(pvo.getPpay()) %>원</td>
		<td style="text-align:center;"><%=CodeUtils.inttoText(pvo.getPcount()) %></td>
	</tr>

<%		
	}

%>
<input type="hidden" name="gubun" id="gubun" value=""/>
<input type="hidden" name="pnum" id="pnum" value="" />
<input type="hidden" id="val" name="val" value="">
<input type="hidden" id="pcategory1" name="pcategory" value="">
<input type="hidden" id="pcategory_detail" name="pcategory_detail" value="">
<input type="hidden" id="detail_product" name="detail_product" value="">
<input type="hidden" id="nowPage" name="nowPage" value="">
<tr>
<td  colspan='5' style="text-align:right;"><input type="button" id="delBtn" value="상품 삭제">
<input type="button" id="insertBtn" value="상품 등록"></td>
</tr>
</table>
</div>
	<div>
	<jsp:include page="/WEB-INF/view/Paging.jsp" flush="true">
					<jsp:param name="url" value="productSelectAll.pid"/>
					<jsp:param value="" name="str"/>
					<jsp:param name="val" value="<%=val %>" />
					<jsp:param name="pcategory" value="<%=_pvo.getPcategory() %>" />
					<jsp:param name="pcategory_detail" value="<%=_pvo.getPcategory_detail() %>" />
					<jsp:param name="detail_product" value="<%=_pvo.getDetail_product() %>" />
					<jsp:param name="minPay" value="<%=minPay %>" />
					<jsp:param name="maxPAy" value="<%=maxPay %>" />
					<jsp:param name="rowCount" value="<%=rowCount %>" />
					<jsp:param name="groupSize" value="<%=groupSize %>" />
					<jsp:param name="nowPage" value="<%=nowPage %>"/>
					<jsp:param name="totalCount" value="<%=totalCount %>"/>
	</jsp:include>
	</div>
	</form>
	<table id="weathertable" align="center" width="30%">
							<tr>
								<td align="center">발표일자</td>
								<td align="center">발표시각</td>
								<td align="center">기온</td>
								<td align="center">습도</td>
								<td align="center">날씨 상태</td>
							</tr>
							<tr>
								<td align="center" id="date" height="50px"></td>
								<td align="center" id="time"></td>
								<td align="center" id="temp"></td>
								<td align="center" id="reh"></td>
								<td align="center" id="icon"></td>
							</tr>
					</table>
	<script type="text/javascript">
	

function goPost(page){
		
	 let val = $("#lookStyle").val();
	 console.log("val : " + val);
	 $("#val").val(val);
	 
	 let pcate = $("#pcategory").val();
	 console.log("pcate : " + pcate);
	 $("#pcategory1").val(pcate);
	 
	 let pcate_d = $("#detail").val();
	 console.log("detail : " + detail);
	 $("#pcategory_detail").val(pcate_d);
	 
	 let d_pro = $("#detail_p").val();
	 console.log("d_pro : " + d_pro);
	 $("#detail_product").val(d_pro);
	 
	 $("#nowPage").val(page);
		

		$("#product").attr({
	   			'action':'<%=url%>',
	   			'method':'POST',
	   			'enctype':'application/x-www-form-urlencoded'
	   	}).submit();
	   	
	   	
	   
		
		
}


</script>
</body>
</html>