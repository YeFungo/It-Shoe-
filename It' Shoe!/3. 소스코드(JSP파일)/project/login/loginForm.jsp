<!DOCTYPE html>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>ItShoe!</title>
</head>

<body bgcolor=d4f3ef>

<section data-role="page">

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. ���� -->
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="login.jsp">
					<h3 style="text-align:center;" size:30px>�α���</h3>
	<section data-role="content" align= "center"> 

		<form method=post action="./login.jsp" data-ajax="false">
		<fieldset data-role="fieldcontain">
		
		    <!-- ȸ��ID -->
			<div class="form-group"><label for="ID" >&nbsp;ȸ��ID:</label>
			<input type="text" id="ID" name="ID" size="10" maxlength="10" required="required" placeholder="���̵�"/>
			</div>
		    <!-- ��й�ȣ -->
			<div class="form-group"> <label for="pswd">��й�ȣ:</label>
			<input type="password" id="pswd" name="pswd" size="10" maxlength="10" required="required" placeholder="��й�ȣ"/>
			</div>
		 
		</fieldset>
        <!--css�� ��ư���� �����-->
		</form>
			<input type="submit" class="btn btn-primary form-control" value="�α���">
			<br>
			
		</form>
			<p align="center">
			<br><button type="button" onclick="location.href='../member/joinForm.jsp' ">ȸ������</button>
			</p>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>