<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*"%>

<html>
<head><title>���̺��� ���ڵ带 ȭ�鿡 ǥ���ϴ� ����</title></head>
<body>
  <h2>member1 ���̺��� ���ڵ带 ȭ�鿡 ǥ���ϴ� ����</h2>
  <TABLE width="550" border="1">
  <TR>
  	<TD width="100">���̵�</TD>
  	<TD width="100">�н�����</TD>
  	<TD width="100">�̸�</TD>
  	<TD width="250">��������</TD>
  </TR>
<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  try{
	String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
    String dbId="jspid";
    String dbPass="jsppass";
	 
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

	String sql= "select * from member1";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();

	while(rs.next()){
	  String id= rs.getString("id");
      String passwd= rs.getString("passwd");
      String name= rs.getString("name");
      Timestamp register=rs.getTimestamp("reg_date");

%>
     <TR>
  	   <TD width="100"><%=id%></TD>
  	   <TD width="100"><%=passwd%></TD>
  	   <TD width="100"><%=name%></TD>
  	   <TD width="250"><%=register.toString()%></TD>
    </TR>
<%  } 
  }catch(Exception e){ 
		e.printStackTrace();
  }finally{
	    if(rs != null) try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
  }
%>
</TABLE>
</body>
</html>