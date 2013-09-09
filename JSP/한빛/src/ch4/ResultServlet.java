import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class ResultServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
                                  throws IOException, ServletException {
        HttpSession session = request.getSession();
        String food = (String) session.getAttribute("FOOD");
        String animal = request.getParameter("ANIMAL");
        session.invalidate();
        response.setContentType("text/html;charset=euc-kr"); 
        PrintWriter out = response.getWriter();
        out.println("<HEAD><TITLE>���� �׽�Ʈ</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("<H3>���� �׽�Ʈ</H3>");
        out.printf("����� %s�� %s�� �����ϴ� �����Դϴ�.", food, animal);
        out.println("</BODY>");
        out.println("</HTML>");
    }
}
