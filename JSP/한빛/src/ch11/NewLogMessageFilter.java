package myfilter;
import javax.servlet.*;
import java.io.*;
import java.util.*;
public class NewLogMessageFilter implements Filter {
    PrintWriter writer;
    public void init(FilterConfig config) throws ServletException {
        String filename = config.getInitParameter("FILE_NAME") ;
        if (filename == null)
            throw new ServletException("�α� ������ �̸��� ã�� �� �����ϴ�.");
        try {
            writer = new PrintWriter(new FileWriter(filename, true), true);
        }
        catch (IOException e) {
            throw new ServletException("�α� ������ �� �� �����ϴ�.");
        }
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
                                                          throws IOException, ServletException {
        GregorianCalendar now = new GregorianCalendar();
        writer.printf("�����Ͻ�: %TF %TT %n", now, now);
        String clientAddr = request.getRemoteAddr();
        writer.printf("Ŭ���̾�Ʈ �ּ�: %s %n", clientAddr);
        chain.doFilter(request, response);
        String contentType = response.getContentType();
        writer.printf("������ ����Ʈ Ÿ��: %s %n", contentType);
        writer.println("---------------------------------------------------");
    }        
    public void destroy() {
        writer.close();
    }
}
