package myfilter;
import javax.servlet.*;
import java.io.*;
import java.util.*;
public class NewLogMessageFilter implements Filter {
    PrintWriter writer;
    public void init(FilterConfig config) throws ServletException {
        String filename = config.getInitParameter("FILE_NAME") ;
        if (filename == null)
            throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
        try {
            writer = new PrintWriter(new FileWriter(filename, true), true);
        }
        catch (IOException e) {
            throw new ServletException("로그 파일을 열 수 없습니다.");
        }
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
                                                          throws IOException, ServletException {
        GregorianCalendar now = new GregorianCalendar();
        writer.printf("현재일시: %TF %TT %n", now, now);
        String clientAddr = request.getRemoteAddr();
        writer.printf("클라이언트 주소: %s %n", clientAddr);
        chain.doFilter(request, response);
        String contentType = response.getContentType();
        writer.printf("문서의 컨텐트 타입: %s %n", contentType);
        writer.println("---------------------------------------------------");
    }        
    public void destroy() {
        writer.close();
    }
}
