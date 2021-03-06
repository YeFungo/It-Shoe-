<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Itshoe!</title>
</head>
</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header >
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content">
		<br><br>
		<table border='0'  width="900"  align="center" >
		   <tr align = "left" height="250" >
			<td align="center"><img src="../shoes/b.png" hspace=20 ><br><br><br>
			<p style="font-family:'나눔바른고딕'; font-size:30px;" >
			 &nbsp;&nbsp;&nbsp;NIKE 에어맥스 270<br> &nbsp;&nbsp;&nbsp;리액트 X Travis Scott</p>
			<p style="font-family:'나눔바른고딕'; font-size:20px;" >
			 &nbsp;&nbsp;&nbsp;제품코드 : CT2864-200<br>
			 &nbsp;&nbsp;&nbsp;색상 : LIGHT CREAM/DARK HAZEL<br>
			 &nbsp;&nbsp;&nbsp;발매가 : 239,000<br>
			 &nbsp;&nbsp;&nbsp;발매일 : 2020-05-29<br>
			 &nbsp;&nbsp;&nbsp;발매방식 : 드로우(추첨)</p>

			</td>
			<td align="center">
			<p align= "center" style="font-family:'나눔바른고딕'; font-size:30px;"> 제품설명</p>
			<p style="font-family:'나눔바른고딕'; font-size:20px;">Nike와 미국의 유명래퍼 트래비스 스캇(Travis Scott)이 협업하여
			<br> 에어맥스 270 리액트제품을 베이스로 콜라보레이션한 신발</p>
			<p style="font-family:'나눔바른고딕'; font-size:20px;" align="center"> 사이즈 : 
              <!-- select라는 속성을 이용해 사이즈를 선택할수있도록함. -->
			  <select name='size' >
    				<option value='' selected >-- 사이즈 선택 --</option>
  				  <option value='210'>210</option>
    				  <option value='215'>215</option>
  				  <option value='220'>220</option>
				  <option value='225'>225</option>
    				  <option value='230'>230</option>
  				  <option value='235'>235</option>
				  <option value='240'>240</option>
    				  <option value='245'>245</option>
  				  <option value='250'>250</option>
				  <option value='255'>255</option>
    				  <option value='260'>260</option>
  				  <option value='265'>265</option>
				  <option value='270'>270</option>
    				  <option value='275'>275</option>
  				  <option value='280'>280</option>
				  <option value='285'>285</option>
    				  <option value='290'>290</option>
  				  <option value='295'>295</option>
  				  <option value='300'>300</option>
			  </select>
			</p>
			<p align= "center">
			<!--funtion을 이용하여 alert(팝업창을 띄우는 것)를 이용해 미구현기능인것을 표현함-->
			<script type="text/javascript">
			function press(){
				alert("미구현 기능입니다.");
			}
			</script>
			<img src="../shoes/buy.png" width="110" height="60" id="buy" onClick="press();">
		
			<img src="../shoes/sell.png" width="110" height="60" id="sell" onClick="press();">
		
			</p>
			<p style="font-family:'나눔바른고딕'; font-size:30px;" align="center">현재 가격 : 1,200,000</p><br>
			<p style="font-family:'나눔바른고딕'; font-size:20px;">사이즈 팁 : 일반신발과 동일한 사이즈로 신는것을 추천!</p>
			</td>
			</tr>
   		   <tr >
		   <td colspan="2"> <img src = "./banner.png"> </td>
		   </tr>
		</table>
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" align="center" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>