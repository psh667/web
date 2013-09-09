import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 
public class LifeCycle extends HttpServlet{
	public static int num=0;
	public int id;

	public void init(ServletConfig conf) throws ServletException{
		super.init(conf);
		num++;
		id=num;
		System.out.println("init: " + id);
	}

	public void service(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out=res.getWriter();
		out.println("<HTML><HEAD><title>Servlet Life Cycle</title></head>");
		out.println("<body>");
		out.println("���� �ν��Ͻ��� ID:"+id+ "<br>");
		Thread th = Thread.currentThread();
		out.println("���� Thread �̸�: "+th.getName()+"<br>");
		out.println("��ü Thread�� ��: "+th.getThreadGroup().activeCount());
		out.println("</body></html>");
	}
}
