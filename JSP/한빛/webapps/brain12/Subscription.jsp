<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    if (name == null || id == null || password == null) 
        throw new Exception("�����͸� �Է��Ͻʽÿ�.");
    Connection conn = null;
    Statement stmt = null;
    try {
        Class.forName("org.apache.commons.dbcp.PoolingDriver");
        conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
        if (conn == null)
            throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
        stmt = conn.createStatement();
        String command = String.format("insert into userinfo " +
                  "(name, id, password) values ('%s', '%s', '%s');",
                  name, id, password);
        int rowNum = stmt.executeUpdate(command);
        if (rowNum < 1)
            throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
    }
    finally {
        try { 
            stmt.close();
        } 
        catch (Exception ignored) {
        }
        try { 
            conn.close();
        } 
        catch (Exception ignored) {
        }
    }
    response.sendRedirect("SubscriptionResult.jsp");
%>
