<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<HTML>
    <HEAD><TITLE>�����ͺ��̽� Ŀ�ؼ� Ǯ �׽�Ʈ</TITLE></HEAD>
    <BODY>
    <H3>�����ͺ��̽� Ŀ�ؼ� Ǯ �׽�Ʈ</H3>
    <%
        Class.forName("org.apache.commons.dbcp.PoolingDriver");
        Connection conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/webdb_pool");
        if (conn != null) {
            out.println("���� ��� �Ϸ�<BR>");
            conn.close();
            out.println("���� ��ȯ �Ϸ�<BR>");
        }
        else {
            out.println("���� ��� ����<BR>");
        }
    %>
    </BODY>
</HTML>
