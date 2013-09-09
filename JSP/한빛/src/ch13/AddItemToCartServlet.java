package web;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class AddItemToCartServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String code = request.getParameter("CODE");
        if (code == null)
            throw new ServletException("��ǰ�ڵ尡 �Էµ��� �ʾҽ��ϴ�.");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("CART");
        if (cart == null)
            cart = new Cart();
        cart.addItem(code, 1);
        session.setAttribute("CART", cart);
        response.sendRedirect("AddItemToCartResult.jsp?ITEM_NUM=" + 1);
    }
}
