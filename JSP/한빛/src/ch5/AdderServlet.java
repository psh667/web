import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class AdderServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
                             throws IOException, ServletException {
        String str1 = request.getParameter("NUM1");
        String str2 = request.getParameter("NUM2");
        response.setContentType("text/html;charset=euc-kr"); 
        PrintWriter out = response.getWriter();
        try {
            int num1 = Integer.parseInt(str1);
            int num2 = Integer.parseInt(str2);
            int result = num1 + num2;
            out.println("<HTML>");
            out.println("<HEAD><TITLE>���� ���α׷�</TITLE></HEAD>");
            out.println("<BODY>");
            out.printf("%d + %d = %d", num1, num2, result);
            out.println("</BODY>");
            out.println("</HTML>");
        }
        catch (NumberFormatException e) {
            out.println("<HTML>");
            out.println("<HEAD><TITLE>���� ���α׷� - ���� ȭ��</TITLE></HEAD>");
            out.println("<BODY>");
            out.println("�߸��� �����Ͱ� �ԷµǾ����ϴ�.");
            out.println("</BODY>");
            out.println("</HTML>");
        }
    }        
}
