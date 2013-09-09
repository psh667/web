<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*"%>

<%
  request.setCharacterEncoding("euc-kr");

  String id= request.getParameter("id");
  String passwd= request.getParameter("passwd");

  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  try{
	String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
    String dbId="jspid";
    String dbPass="jsppass";
	 
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	//22~25:����ڰ� �Է��� ���̵� ���̺� �ִ°�?
	String sql= "select id, passwd from member1 where id= ?";
	pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
	rs=pstmt.executeQuery();
    
	if(rs.next()){ //���̵� ����
		String rId=rs.getString("id");
		String rPasswd=rs.getString("passwd");
      if(id.equals(rId) && passwd.equals(rPasswd)){//��й�ȣ�� ������?
	    sql= "delete from member1 where id= ? ";
	    pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,id);
	    pstmt.executeUpdate();
	   
%>
<html>
<head><title>���ڵ� ��������</title></head>
<body>
  member1 ���̺��� ���ڵ带 �����߽��ϴ�.
</body>
</html>
<%
      }else{//����ڰ� �Է��� ��й�ȣ�� �����ͺ��̽� ���̺� �ִ� ��й�ȣ�� �ٸ�
  		out.println("�н����尡 Ʋ�Ƚ��ϴ�.");}
  	}else{//����ڰ� �Է��� ���̵� ����
  		 out.println("���̵� Ʋ�Ƚ��ϴ�.");
  	}//28���� if��
	}catch(Exception e){ 
		e.printStackTrace();
	}finally{
		if(rs != null) try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
	}
%>