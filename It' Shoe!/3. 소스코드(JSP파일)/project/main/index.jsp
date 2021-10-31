<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Itshoe!</title>
</head>
<body>

<section data-role="page">

	<!-- 캡슐화된 해더를 간단히적용함.  -->
	<header >
		<%@ include file="../include/header.inc" %> 
	</header> 
	<!-- 2. 본문 -->
	<section data-role="content">
	<!-- 검색엔진을 메인화면에 구현하고싶었지만 실패하여 메뉴바에 구성함.-->
	<p align="center" style="font-family:'나눔바른고딕'; font-size:15px;"><img  src="./search.png"><br>검색은 미구현했지만 구현하도록 노력해보겠습니다.</p>
	    <!-- 테이블속성을 사용하여 화면구성에 용이함을 얻었고, border속성을 사용하여 개발중에 편리함을 얻었다.-->
		<table border='0'  width="900"  align="center" > 
		   <tr>
		   <br><br>
		   <!--colspan을 사용해 3칸을 1칸으로 합친뒤 align속성을 이용하여 위치를 잡아주고 font-family속성으로 글꼴을 잡아준뒤 fontsize를 지정해주었다. -->
		   <td colspan="3" align="center" style="font-family:'나눔바른고딕'; font-size:35px;" >오늘의 추천제품</td>
		   </tr>
		   <tr align = "center" height="250" >
            <!--사진을 클릭할시 shoes폴더에있는 stussy.jsp를 열도록함. -->
            <!--hspace속성을 이용해 사진의 좌우간격을 20으로 지정함.   -->
            <td><a href="../shoes/stussy.jsp"> <img src="../shoes/a.png" hspace=20 ></td> 
			
			<td><a href="../shoes/scott.jsp"> <img src="../shoes/b.png" hspace=20></td> 
			
			<td><a href="../shoes/yeezy.jsp"> <img src="../shoes/c.png" hspace=20></td>
   		   </tr>
		   <tr align = "center" height="50">
			<td style="font-family:'나눔바른고딕'; font-size:25px;">Nike 에어줌 스피리돈<br>케이지2 x Stussy <br><br></td> <!--가독성이 좋게 br을 사용함-->
			<td style="font-family:'나눔바른고딕'; font-size:25px;">Nike 에어맥스 270 <br> 리액트 x TravisScott<br><br></td>
			<td style="font-family:'나눔바른고딕'; font-size:25px;">이지부스트 700 MNVN <br> Tripleblack<br><br></td>
		   </tr>
		   <tr align = "center" >
			<td>
			<p style="font-family:'나눔바른고딕'; font-size:15px;">
			최저 판매가 <br> </p>
			<p style="font-family:'나눔바른고딕'; font-size:35px; ">\650,000</p>
			</td>

			<td>
			<p style="font-family:'나눔바른고딕'; font-size:15px;">
			최저 판매가 <br> </p>
			<p style="font-family:'나눔바른고딕'; font-size:35px; ">\1,200,000</p>
			</td>

			<td>
			<p style="font-family:'나눔바른고딕'; font-size:15px;">
			최저 판매가 <br> </p>
			<p style="font-family:'나눔바른고딕'; font-size:35px; ">\500,000</p>
			</td>
		   </tr>
		   <tr>
		   <!--funtion을 이용하여 alert(팝업창을 띄우는 것)를 이용해 미구현기능인것을 표현함-->
			<script type="text/javascript">
			function press(){ 
				alert("미구현 기능입니다.");
			}
			</script>
			<td align="center">
			<!--사진의 폭,높이를 정하고onclik했을시 press함수를 실행하도록함-->
			 <img src="../shoes/buy.png"  width="110" height="60" onClick="press();"> </a>&nbsp;&nbsp;&nbsp;
			 <img src="../shoes/sell.png"  width="110" height="60" onClick="press();"> </a>
			</td>

			<td align="center">
			 <img src="../shoes/buy.png"  width="110" height="60" onClick="press();"> </a>&nbsp;&nbsp;&nbsp;
			 <img src="../shoes/sell.png" width="110" height="60" onClick="press();"> </a>
			</td>

			<td align="center">
			 <img src="../shoes/buy.png"  width="110" height="60" onClick="press();"> </a>&nbsp;&nbsp;&nbsp;
			 <img src="../shoes/sell.png" width="110" height="60" onClick="press();"> </a>
			</td>
			
		   </tr>
		   <tr >
		   <!--배너를 사용해 홈페이지의 이벤트상황을 알려줌.-->
		   <td colspan="3"> <img src = "../shoes/banner.png"> </td> 
		   </tr>
		   <tr height="100">
			<td colspan="3" align="center"><p style="font-family:'나눔바른고딕'; font-size:35px;">
			홈페이지로 이동
			</p><td>
		   </tr>

		   <tr align="center">
			<td colspan="3">
               <!--href를 이용하여 홈페이지로 이동할수있는 링크를 삽입함. 또한 이미지의 폭(170), 높이(120), 사이공간(50)등을 지정함 -->
			   <a href="https://www.nike.com/kr/ko_kr"> <img src="../homepage/nike.png"  width="170" height="120" hspace=50 >
			   <a href="https://shop.adidas.co.kr"> <img src="../homepage/adidas.png"  width="190" height="120" hspace=50>
			   <a href="https://www.kasina.co.kr/"> <img src="../homepage/kasina.png"  width="170" height="120" hspace=50>
			   <a href="http://www.worksout.co.kr/front/main.do"> <img src="../homepage/worksout.png"  width="170" height="120" hspace=50>
			</td>
		   </tr>


		</table>
	
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" align="center" data-theme="a" data-position="fixed">
	    <!--align 속성을 center로 주면서 항상 가운데에 위치하도록하였음.-->
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>