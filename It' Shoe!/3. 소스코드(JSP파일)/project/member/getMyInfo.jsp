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

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<%@ include file="../include/header.inc" %>
	</header> 
	<!-- 2. ���� -->
	<section data-role="content"> 
	
		<!-- �������� ���� �� �Է� �Ű������� ���� -->
		<%
		// ȸ�� ���� ��ü 
		String pswd        = "";
		String gender      = "";
		String birthday    = "";
		String image       = "";
		String phonenum    = "";
		String date_joined = ""; 
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
			// ����� ȸ������ ����  
			sql = "select * " + 
				  " from ȸ�� " +        
				  "where ȸ��ID   = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			
			// ��ϵ� ȸ���� ���
			if (rs.next()) {
				name        = rs.getString("����");
				gender      = rs.getString("����");
				birthday    = rs.getString("����");
				date_joined = rs.getString("�����");
				phonenum    = rs.getString("�ڵ�����ȣ");
				%>
				<p align="center">
				<br>
				<h1>�̸� : <%= name %><br>(ID : <%= ID %>)</h1>
				<b>����</b>: <%= gender %><br>
				<b>����</b>: <%= birthday %><br>
				<b>��� </b>: <%= date_joined %><br>
                <b>�ڵ�����ȣ</b>: <%= phonenum %><br>
				</p>
				<br>
				<center>
				<button onclick="location.href='./updateForm.jsp'" id="btnUpdate" data-role="button" data-inline="true">������������</button>
            	    <a href="./deleteInfo.jsp" data-role="button" data-inline="true" data-rel="dialog" >ȸ��Ż��</a>	</center>
				
			<%	 
			// ��ϵ� ȸ���� �ƴ� �ܿ� 
			} else {
				rst = "��ȸ��";
				msg = "��ϵ� ȸ���� �ƴմϴ�!";  
			}
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
</section>
	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>