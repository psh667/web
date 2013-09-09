package web;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class CartListServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("CART");
        if (cart != null) {
            CartList cartList = readDB(cart);
            request.setAttribute("CART_LIST", cartList);
        }
        else {
            request.setAttribute("CART_LIST", null);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("WebTemplate.jsp?BODY_PATH=CartListView.jsp");
        dispatcher.forward(request, response); 
    }
    private CartList readDB(Cart cart) throws ServletException {    // DB�κ��� å ������ �д� �޼���
        CartList cartList = new CartList();
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName("org.apache.commons.dbcp.PoolingDriver");
            conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:/wdbpool");
            if (conn == null)
                throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
            stmt = conn.createStatement();
            int itemNum = cart.getSize();
            for (int cnt = 0; cnt < itemNum; cnt++) {
                String code = cart.getCode(cnt);
                int number = cart.getNumber(cnt);
                ResultSet rs = stmt.executeQuery(
                       "select title, price from goodsinfo " +
                       "where code = '" + code + "';");
                if (!rs.next())
                    throw new Exception("�ش� ��ǰ�� �����ϴ�. [��ǰ�ڵ�:" + code + "]");
                String title = rs.getString("title");
                int price = rs.getInt("price");
                cartList.setCode(cnt, code);
                cartList.setTitle(cnt, toUnicode(title));
                cartList.setPrice(cnt, price);
                cartList.setNumber(cnt, number);
            }
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
        return cartList;
    }
    private String toUnicode(String str) {    // ISO-8859-1 ���ڿ��� Unicode ���ڿ��� �ٲٴ� �޼���
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
