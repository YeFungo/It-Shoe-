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

<!-- �������� ���� �� �Է� �Ű������� ���� -->
<%
// �Է����� �ѱ� ó��
request.setCharacterEncoding("euc-kr");
// �Է� �������� ���� 
String rst = request.getParameter("rst");
String msg = request.getParameter("msg");
%>

<section data-role="page">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<frameset >
			<legend align="center" style="font-size:40px">���� ����</legend>  
			<p align="center" style="font-size:30px">
			���: ����<br>
			����: ���̵� ��й�ȣ�� Ʋ���ϴ�.
			</p>
		</frameset>
			
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>