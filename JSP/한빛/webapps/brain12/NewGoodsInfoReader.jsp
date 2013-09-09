<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    String code = request.getParameter("code");
    Connection conn = null;
    Statement stmt = null;
    try {
        Class.forName("org.apache.commons.dbcp.PoolingDriver");
        conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/webdb_pool");
        if (conn == null)
            throw new Exception("데이터베이스에 연결할 수 없습니다.<BR>");
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from goodsinfo where code = '" + code + "';");
        if (rs.next()) {
            String title = rs.getString("title");
            String writer = rs.getString("writer");
            int price = rs.getInt("price");
            request.setAttribute("CODE", code);
            request.setAttribute("TITLE", toUnicode(title));
            request.setAttribute("WRITER", toUnicode(writer));
            request.setAttribute("PRICE", new Integer(price));
        }
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
    RequestDispatcher dispatcher = request.getRequestDispatcher("GoodsInfoViewer.jsp");
    dispatcher.forward(request, response); 
%>
<%!
    private String toUnicode(String str) {    // ISO-8859-1 문자열을 Unicode 문자열로 바꾸는 메서드
        try {
            byte[] b = str.getBytes("ISO-8859-1");
            return new String(b);
        }
        catch (java.io.UnsupportedEncodingException uee) {
            System.out.println(uee.getMessage());
            return null;
        }
    }
%>
