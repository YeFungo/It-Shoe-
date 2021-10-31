<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>It Shoe!</title>
</head>
</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header">
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. 본문 -->
	<section align="center"> 
		<br>
		<p style="font-family:'나눔바른고딕'; font-size:50px;" align="center">
		고객지원</p>
		<p align="center"><img src="./FAQ.png" hspace=20 width="100" height="100" ><br></p>
		<p style="font-family:'나눔바른고딕'; font-size:30px;" align="center">
		FAQ
		</p>
		<!--많이받는 질문과 답변등을 작성해둠-->
		<table border='0' align="center">
		<tr><td align="left" style="font-family:'나눔바른고딕'; font-size:30px;"> Q.ItShoe!는 어떤 서비스 입니까?</td> </tr>
		<tr><td align="left" style="font-family:'나눔바른고딕'; font-size:20px;">
		&nbsp;&nbsp;&nbsp;A. ItShoe!는 당신이 가지고싶은 제품을 손쉽게 가질 수 있게 도와주는 신발거래 시스템입니다.
		</td></tr>

		<tr> <td align="left" style="font-family:'나눔바른고딕'; font-size:30px;"> <br>Q.ItShoe!는 믿을 수 있는 건가요?</td> </tr>
		<tr><td align="left" style="font-family:'나눔바른고딕'; font-size:20px;">
		&nbsp;&nbsp;&nbsp;A. ItShoe!는 최선을 다해 정품검수를 하여 구매자와 판매자간의 신뢰를 연결해주고 있습니다.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;믿을 수 있는 정품판정단의 검수를 통하여 신용있는 종목(제품)이 거래되도록 노력하고 있습니다.
		</td></tr>

		<tr> <td align="left" style="font-family:'나눔바른고딕'; font-size:30px;"> <br>Q.로그인이 되지 않습니다.</td> </tr>
		<tr><td align="left" style="font-family:'나눔바른고딕'; font-size:20px;">
		&nbsp;&nbsp;&nbsp;A. 아이디 또는 비밀번호가 기억나지 않는다면 홈페이지의 아이디/비밀번호 찾기를 통해 확인하여 주시기 바랍니다. <br>
		&nbsp;&nbsp;&nbsp;&nbsp;잘못된 비밀번호를 지속적으로 입력시에는 로그인 제한될 수 있습니다.<br>
		</td></tr>

		<tr> <td align="left" style="font-family:'나눔바른고딕'; font-size:30px;"> <br>Q.ItShoe! 에서 거래되는 종목은 중고제품 인가요?</td> </tr>
		<tr><td align="left" style="font-family:'나눔바른고딕'; font-size:20px;">
		&nbsp;&nbsp;&nbsp;A. 정식 발매 매장에서 소비자의 손으로 들어오게되면 Second Hands(중고 제품)으로 분류됩니다.<br>
		&nbsp;&nbsp;&nbsp;&nbsp;다만, 중고제품 중 미사용 새제품으로 분류된 제품만 아웃오브스탁에서 거래되고 있습니다.
		</td></tr>

		<tr> <td align="left" style="font-family:'나눔바른고딕'; font-size:30px;"> <br>Q.출시 예정상품이 무엇인가요?</td> </tr>
		<tr><td align="left" style="font-family:'나눔바른고딕'; font-size:20px;">
		&nbsp;&nbsp;&nbsp;A. 현재 여러브랜드에서 발매하려하는 신발을 여러사이트에 갈 필요없이 편하게 한곳에 모아둔 서비스입니다.<br>
		</td></tr>
		</table>
		<br>
        <!--어떠한 사이트인지 밝히고 버전과 혹시 문제가생길시 연락할 정보를 적어둠-->
		신발거래 사이트 v1.0<br>
		문의: 강다훈 / 010-9722-3433
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" >
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>