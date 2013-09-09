import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class TodayMenu extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException{
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();

		out.println("<HTML>");
		out.println("<HEAD><title>SELECT & POST</title></head>");
		out.println("<body>");
		out.println("<center><h3>����������</h3></center>");

		String values[] = req.getParameterValues("lunch");
		for(int i=0;i<values.length;i++){
			out.print("<br>");
			out.print(HangulConversion.toKor(values[i]));
		}

		out.println(" �̳� �Ծ�� �ڴ�");
		out.println("</body></HTML>");

	}
}
