<!DOCTYPE html>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.css">
<title>ItShoe!</title>
</head>
<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<%@ include file="../include/header.inc" %>
	</header> 
	<!-- 2. 본문 -->
	<section data-role="content"> 
	
		<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
		<%
		// 회원 관련 객체 
		String pswd        = "";
		String gender      = "";
		String birthday    = "";
		String image       = "";
		String phonenum    = "";
		String date_joined = ""; 
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
			// 사용자 회원정보 추출  
			sql = "select * " + 
				  " from 회원 " +        
				  "where 회원ID   = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			
			// 등록된 회원인 경우
			if (rs.next()) {
				name        = rs.getString("성명");
				gender      = rs.getString("성별");
				birthday    = rs.getString("생일");
				date_joined = rs.getString("등록일");
				phonenum    = rs.getString("핸드폰번호");
				%>
				<p align="center">
				<br>
				<h1>이름 : <%= name %><br>(ID : <%= ID %>)</h1>
				<b>성별</b>: <%= gender %><br>
				<b>생일</b>: <%= birthday %><br>
				<b>등록 </b>: <%= date_joined %><br>
                <b>핸드폰번호</b>: <%= phonenum %><br>
				</p>
				<br>
				<center>
				<button onclick="location.href='./updateForm.jsp'" id="btnUpdate" data-role="button" data-inline="true">개인정보수정</button>
            	    <a href="./deleteInfo.jsp" data-role="button" data-inline="true" data-rel="dialog" >회원탈퇴</a>	</center>
				
			<%	 
			// 등록된 회원이 아닌 겨우 
			} else {
				rst = "비회원";
				msg = "등록된 회원이 아닙니다!";  
			}
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
</section>
	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>