<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*"%>

<%
  Connection con=null;

  try{
	String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
    String dbId="jspid";
    String dbPass="jsppass";
	
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	//�Ʒ��� ���� �ۼ��ص� ��
	//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptest?user=jspid&password=jsppass");
	out.println("����� ����Ǿ����ϴ�.");
	}catch(Exception e){ 
		e.printStackTrace();
	}
%>
