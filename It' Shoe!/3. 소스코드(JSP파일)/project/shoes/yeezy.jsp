<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Itshoe!</title>
</head>
</head>
<body bgcolor=d4f3ef>

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
			<td align="center"><img src="../shoes/c.png" hspace=20 ><br><br><br>
			<p style="font-family:'나눔바른고딕'; font-size:30px;" >
			 &nbsp;&nbsp;&nbsp;이지부스트 700 MNVN<br> &nbsp;&nbsp;&nbsp;Tripleblack</p>
			<p style="font-family:'나눔바른고딕'; font-size:20px;" >
			 &nbsp;&nbsp;&nbsp;제품코드 : FV4440<br>
			 &nbsp;&nbsp;&nbsp;색상 : BLACK/BLACK/BLACK<br>
			 &nbsp;&nbsp;&nbsp;발매가 : 289,000<br>
			 &nbsp;&nbsp;&nbsp;발매일 : 2020-02-28<br>
			 &nbsp;&nbsp;&nbsp;발매방식 : 아디다스 공식홈페이지 라플</p>

			</td>
			<td align="center">
			<p align= "center" style="font-family:'나눔바른고딕'; font-size:30px;"> 제품설명</p>
			<p style="font-family:'나눔바른고딕'; font-size:20px;">adidas의 한 축을 담당하고있는 칸예 웨스트(Kanye West)<br>
			가 만든 YEZZY의 여러버전중 700의 V3버전, 트리플블랙색상으로 심플한색상 과 편안한 착화감을 가진 신발
			<p style="font-family:'나눔바른고딕'; font-size:20px;" align="center"> 사이즈 : 
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
			<script type="text/javascript">
			function press(){
				alert("미구현 기능입니다.");
			}
			</script>
			<img src="../shoes/buy.png" width="110" height="60" id="buy" onClick="press();">

			<img src="../shoes/sell.png" width="110" height="60" id="sell" onClick="press();">

			</p>
			<p style="font-family:'나눔바른고딕'; font-size:30px;" align="center">현재 가격 : 500,000</p>
			<p style="font-family:'나눔바른고딕'; font-size:20px;">사이즈 팁 : 반사이즈 크게신는것을 추천!</p>
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