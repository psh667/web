<%@page contentType="text/html; charset=euc-kr" errorPage="../DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    String code = request.getParameter("code");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String price = request.getParameter("price");
    if (code == null || title == null || writer == null || price == null) 
        throw new Exception("������ �����Ͱ� �ֽ��ϴ�.");
    Connection conn = null;
    Statement stmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb", "root", "1234");
        if (conn == null)
            throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
        stmt = conn.createStatement();
        String command = String.format("update goodsinfo set " +
                              "title := '%s', writer := '%s', " +
                              "price := %s where code = '%s';",
                              title, writer, price, code);
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
    response.sendRedirect("UpdateResult.jsp?code=" + code);
%>
