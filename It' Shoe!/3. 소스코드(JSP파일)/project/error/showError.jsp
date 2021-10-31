<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>ItShoe!</title>
</head>
</head>
<body>

<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
<%
// 입력정보 한글 처리
request.setCharacterEncoding("euc-kr");
// 입력 에러정보 추출 
String rst = request.getParameter("rst");
String msg = request.getParameter("msg");
%>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<frameset >
			<legend align="center" style="font-size:40px">에러 내용</legend>  
			<p align="center" style="font-size:30px">
			결과: 실패<br>
			에러: 아이디나 비밀번호가 틀립니다.
			</p>
		</frameset>
			
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>