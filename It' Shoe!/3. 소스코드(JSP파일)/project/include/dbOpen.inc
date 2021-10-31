<%
// DB Open: MS SQL Server
// JDBC Driver ·Îµù
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
// DB Open 
conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=project;user=pro;password=1234;"); 
%>   	