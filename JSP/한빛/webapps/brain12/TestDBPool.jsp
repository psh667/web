<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<HTML>
    <HEAD><TITLE>데이터베이스 커넥션 풀 테스트</TITLE></HEAD>
    <BODY>
    <H3>데이터베이스 커넥션 풀 테스트</H3>
    <%
        Class.forName("org.apache.commons.dbcp.PoolingDriver");
        Connection conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/webdb_pool");
        if (conn != null) {
            out.println("연결 취득 완료<BR>");
            conn.close();
            out.println("연결 반환 완료<BR>");
        }
        else {
            out.println("연결 취득 실패<BR>");
        }
    %>
    </BODY>
</HTML>
