package myservlet;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class SimpleServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
                             throws IOException, ServletException {
        System.out.println("�̰��� ���� Ŭ���� �ȿ��� ����ϴ� �޽����Դϴ�.");
        response.setContentType("text/html;charset=euc-kr"); 
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>���� �׽�Ʈ�� ����</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("�̰��� ���� �׽�Ʈ�� ���� ������� �����Դϴ�.");
        out.println("</BODY>");
        out.println("</HTML>");
    }
}
