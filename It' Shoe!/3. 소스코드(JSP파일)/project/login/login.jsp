<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>

<!-- �������� ���� �� �Է����� ���� -->
<%
// �Է����� �ѱ� ó��
request.setCharacterEncoding("euc-kr");
// ����� �Է����� ����
String ID   = request.getParameter("ID");
String pswd = request.getParameter("pswd");
String name = "";
// DB ���� ��ü/����
Connection        conn  = null;
PreparedStatement pstmt = null;
ResultSet         rs    = null;
String            sql   = "";
String            rst   = "success";
String            msg   = "";
int               cnt   = 0;
%>

<!-- �α��� ó�� -->
<%
try {
%>
    <%@ include file="../include/dbOpen.inc" %>
    
    <%
   	// ��ϵ� ���̵��� ���� �˻�
	sql = "select ���� " + 
		  "  from ȸ�� " + 
		  " where ȸ��ID   = ? " +
		  "   and ��й�ȣ = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, ID);
   	pstmt.setString(2, pswd);
    rs = pstmt.executeQuery();
    
    // ��ϵ� ���̵��� ���, ���� ����
    if (rs.next()) {
        name = rs.getString("����");
			
        // ���� ����
		session.setAttribute("ID", ID);
		session.setAttribute("name", name);
    // ��ϵ� ���̵� �ƴ� ���          
    } else {
	    rst = "�α��ο���";
		msg = "ȸ���� �ƴմϴ�!";
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

<!-- ���� ��, �б� -->
<%
// �α��� ��, ����� Ȩ���� �̵�
if(rst.equals("success")) 
	response.sendRedirect("../main/index.jsp");
// ȸ���� �ƴϰų� DB ���� ��, ������� ȭ������ �̵� 
else
	response.sendRedirect("../error/showError.jsp?rst=" + rst + "&msg=" + msg);
%>