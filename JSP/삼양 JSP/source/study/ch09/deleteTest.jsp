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
	//22~25:사용자가 입력한 아이디가 테이블에 있는가?
	String sql= "select id, passwd from member1 where id= ?";
	pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
	rs=pstmt.executeQuery();
    
	if(rs.next()){ //아이디가 존재
		String rId=rs.getString("id");
		String rPasswd=rs.getString("passwd");
      if(id.equals(rId) && passwd.equals(rPasswd)){//비밀번호가 같은가?
	    sql= "delete from member1 where id= ? ";
	    pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,id);
	    pstmt.executeUpdate();
	   
%>
<html>
<head><title>레코드 삭제예제</title></head>
<body>
  member1 테이블의 레코드를 삭제했습니다.
</body>
</html>
<%
      }else{//사용자가 입력한 비밀번호와 데이터베이스 테이블에 있는 비밀번호가 다름
  		out.println("패스워드가 틀렸습니다.");}
  	}else{//사용자가 입력한 아이디가 없음
  		 out.println("아이디가 틀렸습니다.");
  	}//28라인 if꺼
	}catch(Exception e){ 
		e.printStackTrace();
	}finally{
		if(rs != null) try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
	}
%>