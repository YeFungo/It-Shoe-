<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ItShoe!</title>
</head>
</head>
<body>

<section data-role="page" id="page1" >

	<!-- 1. ��� -->
	<header >
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content" > 
<!--post get����� ����Ͽ��� join.jsp�� �ҷ���-->
		<form method="post" action="join.jsp" data-ajax="false" >

	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
<!--����Ʈ���� ����� ȸ�������ϴ°��� ȸ���� ����� ����-->
		<div class="jumbotron" style="padding-top: 20px;">
		<form method="post" action="join.jsp">
		<h3 style="text-align:center;" size:30px>ȸ������</h3>
		<form method=post action="./join.jsp" data-ajax="false">

			<fieldset data-role="fieldcontain">
			
			    <!-- ��ID -->
				<label for="ID">ȸ��ID:</label>
				<input type="text" id="ID" name="ID" size=15 maxlength=10 required="required" placeholder="���̵�"/>

			 <!-- ���� -->
				<br><label for="name">����:</label>
				<input type="text" id="name" name="name" size=15 maxlength=10 required="required" placeholder="�̸�"/>
			    <!-- ��й�ȣ -->
				<br><label for="pswd">��й�ȣ:</label>
				<input type="password" id="pswd" name="pswd" size=15 maxlength=10 required="required" placeholder="��й�ȣ"/>
	  	
                <!-- ���� -->
				<fieldset data-role="controlgroup" data-type="horizontal">
						<b>����:&nbsp&nbsp&nbsp </b>
						<input type="radio" name="gender" id="gender-1" value="��"/>
						<label for="gender-1">��</label>

						<input type="radio" name="gender" id="gender-2" value="��"/>
						<label for="gender-2">��</label>
				</fieldset>
				
                <!-- ���� -->
				<label for="birthday2">����:</label>
				<input type="date" id="birthday2" name="birthday" required="required"/>

	<!--�ڵ�����ȣ-->
				<br><label for="phonenum">�ڵ�����ȣ:</label>
				<input type="text" id="phonenum" name="phonenum" size=15 maxlength=11 required="required" placeholder="�ڵ�����ȣ"/>

		</form>
			<input type="submit" class="btn btn-primary form-control" value="ȸ������">
			<br>
			
		</form>
		</div>
	</div>	
</div>	
					<%
					String interest    = "";
					// DB ���� ��ü 
					Connection        conn  = null;
					PreparedStatement pstmt = null;
					ResultSet         rs    = null;
					ResultSet         rs2   = null;
					String            sql   = "";
					String            rst   = "success";
					String            msg   = "";
					%>	

					<%
					try {
					%>
						<!-- DB Open -->
						<%@ include file="../include/dbOpen.inc" %>
				
					<%
					} catch(SQLException e) {
						rst = "�ý��ۿ���";
						msg = e.getMessage();
					} finally {
						if(rs != null) 
							rs.close();
						if(pstmt != null) 
							pstmt.close();
						if(conn != null) 
							conn.close();
					} 
					%>					
					
				</fieldset>				
			</fieldset>
		</form>
	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>