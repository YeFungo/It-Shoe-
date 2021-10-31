<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>

<!-- �������� ���� �� �Է� �Ű������� ���� -->
<%
// �Է����� �ѱ� ó��
request.setCharacterEncoding("euc-kr");
// ȸ�� ���� �Է����� ����
String ID         = request.getParameter("ID");
String name       = request.getParameter("name");
String pswd       = request.getParameter("pswd");
String gender     = request.getParameter("gender");
String birthday   = request.getParameter("birthday");
String phonenum       = request.getParameter("phonenum");
%>

<%
// DB ���� ��ü
Connection        conn  = null; 
PreparedStatement pstmt = null;
ResultSet         rs    = null;
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
	// �̹� ��ϵ� ���̵� �ִ��� �˻�
	sql = "select * " + 
		  " from ȸ�� " + 
		  "where ȸ��ID   = ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ID);
	rs = pstmt.executeQuery();
	
	// ��ϵ� ���̵� �ִ� ���          
	if (rs.next()) {
		rst = "�ߺ����̵�";
		msg = "�̹� ��ϵ� ���̵��Դϴ�!";
	// ��ϵ� ���̵� �ƴ� ���          
	} else {
	
		// Ʈ����� ���� ���� ���̺� ������ ���� AutoCommit�� ����
		conn.setAutoCommit(false);
	
		// ȸ������ ��� 
		sql = "insert into ȸ��(ȸ��ID, ����, ��й�ȣ, ����, ����, �ڵ�����ȣ, �����) " + 
			  " values (?, ?, ?, ?, ?, ?,getdate())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, ID);
		pstmt.setString(2, name);
		pstmt.setString(3, pswd);
		pstmt.setString(4, gender);
		pstmt.setString(5, birthday);
		pstmt.setString(6, phonenum);
		pstmt.executeUpdate();
		}
		%>
	<%
// ���� ���̺� ���� �� ������ ������ commit ó��
		conn.commit();
		%>
		
		<%
        // ���� ����
		session.setAttribute("ID", ID);
		session.setAttribute("name", name);
		%>
	<%	
	%>
<%
} catch(SQLException e) {
	// ���� ���̺� ���� �� ������ ������ rollback ó��
	conn.rollback();

	rst = "�ý��ۿ���";
	msg = e.getMessage();
} finally {
	if(pstmt != null) 
	   pstmt.close();
	if(conn != null) 
		conn.close();
}
%>
<!-- ���� ��, �б� -->
<%
// ���� ��, ��ȸȭ������ �̵�
if(rst.equals("success"))
	response.sendRedirect("../main/index.jsp");
// DB ���� ��, �������ȭ������ �̵� 
else
	response.sendRedirect("../error/showError.jsp?rst=" + rst + "&msg=" + msg);
%>
		
		


