package web;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class NewLoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter("ID");
        String password = request.getParameter("PASSWORD");
        String currentURL = request.getParameter("CURRENT_URL");
        if (checkLoginInfo(id, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("LOGIN_ID", id);
        }
        response.sendRedirect(currentURL);
    }
    private boolean checkLoginInfo(String id, String password) throws ServletException {
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("org.apache.commons.dbcp.PoolingDriver");
            conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
            if (conn == null)
                throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select password " +
                        "from userinfo where id = '" + id + "';");
            if (!rs.next())
                return false;
            String correctPassword = rs.getString("password");
            if (password.equals(correctPassword))
                return true;
            else
                return false;
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
    }
}
