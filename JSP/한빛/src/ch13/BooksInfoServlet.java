package web;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class BooksInfoServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String lowerCode = request.getParameter("LAST_CODE");
        if (lowerCode == null)
            lowerCode = "00000";
        BooksInfo booksInfo = readDB(lowerCode);
        request.setAttribute("BOOKS_INFO", booksInfo);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WebTemplate.jsp?BODY_PATH=BooksInfoView.jsp");
        dispatcher.forward(request, response); 
    }
    private BooksInfo readDB(String lowerCode) throws ServletException {     // 데이터베이스로부터 책 정보를 읽는 메서드
        BooksInfo booksInfo = new BooksInfo();
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("org.apache.commons.dbcp.PoolingDriver");
            conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
            if (conn == null)
                throw new Exception("데이터베이스에 연결할 수 없습니다.");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * " +
                             "from goodsinfo where code > '" + 
                             lowerCode + "' order by code asc;");
            for (int cnt = 0; cnt < 5; cnt++) {
                if (!rs.next())
                    break;
                booksInfo.setCode(cnt, rs.getString("code"));
                booksInfo.setTitle(cnt, toUnicode(rs.getString("title")));
                booksInfo.setWriter(cnt, toUnicode(rs.getString("writer")));
                booksInfo.setPrice(cnt, rs.getInt("price"));
            }
            if (!rs.next())
                booksInfo.setLastPage(true);
        }
        catch (Exception e) {
            throw new ServletException(e);
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
        return booksInfo;
    }
    private String toUnicode(String str) {    // ISO-8859-1 문자열을 Unicode 문자열로 바꾸는 메서드
        if (str == null)
            return null;
        try {
            byte[] b = str.getBytes("ISO-8859-1");
            return new String(b);
        }
        catch (java.io.UnsupportedEncodingException uee) {
            System.out.println(uee.getMessage());
            return null;
        }
    }
}
