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

	<!-- 1. 헤더 -->
	<header >
		<%@ include file="../include/header.inc" %>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content" > 
<!--post get방식을 사용하였고 join.jsp를 불러옴-->
		<form method="post" action="join.jsp" data-ajax="false" >

	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
<!--점보트론을 사용해 회원가입하는곳에 회색의 배경을 줬음-->
		<div class="jumbotron" style="padding-top: 20px;">
		<form method="post" action="join.jsp">
		<h3 style="text-align:center;" size:30px>회원가입</h3>
		<form method=post action="./join.jsp" data-ajax="false">

			<fieldset data-role="fieldcontain">
			
			    <!-- 고객ID -->
				<label for="ID">회원ID:</label>
				<input type="text" id="ID" name="ID" size=15 maxlength=10 required="required" placeholder="아이디"/>

			 <!-- 성명 -->
				<br><label for="name">성명:</label>
				<input type="text" id="name" name="name" size=15 maxlength=10 required="required" placeholder="이름"/>
			    <!-- 비밀번호 -->
				<br><label for="pswd">비밀번호:</label>
				<input type="password" id="pswd" name="pswd" size=15 maxlength=10 required="required" placeholder="비밀번호"/>
	  	
                <!-- 성별 -->
				<fieldset data-role="controlgroup" data-type="horizontal">
						<b>성별:&nbsp&nbsp&nbsp </b>
						<input type="radio" name="gender" id="gender-1" value="남"/>
						<label for="gender-1">남</label>

						<input type="radio" name="gender" id="gender-2" value="여"/>
						<label for="gender-2">여</label>
				</fieldset>
				
                <!-- 생일 -->
				<label for="birthday2">생일:</label>
				<input type="date" id="birthday2" name="birthday" required="required"/>

	<!--핸드폰번호-->
				<br><label for="phonenum">핸드폰번호:</label>
				<input type="text" id="phonenum" name="phonenum" size=15 maxlength=11 required="required" placeholder="핸드폰번호"/>

		</form>
			<input type="submit" class="btn btn-primary form-control" value="회원가입">
			<br>
			
		</form>
		</div>
	</div>	
</div>	
					<%
					String interest    = "";
					// DB 관련 객체 
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
						rst = "시스템에러";
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

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>