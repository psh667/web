package mall;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class PersonalInfoServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
                             throws IOException, ServletException {
        PersonalInfo obj = new PersonalInfo();
        obj.setName("����ȣ");
        obj.setGender('��');
        obj.setAge(24);
        request.setAttribute("pinfo", obj);
        RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerInfoViewer.jsp");
        dispatcher.forward(request, response); 
    }
}
