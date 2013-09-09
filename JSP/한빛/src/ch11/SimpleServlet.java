package myservlet;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class SimpleServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
                             throws IOException, ServletException {
        System.out.println("이것은 서블릿 클래스 안에서 출력하는 메시지입니다.");
        response.setContentType("text/html;charset=euc-kr"); 
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>필터 테스트용 서블릿</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("이것은 필터 테스트를 위해 만들어진 서블릿입니다.");
        out.println("</BODY>");
        out.println("</HTML>");
    }
}
