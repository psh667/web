package myfilter;
import javax.servlet.*;
import java.io.*;
public class SimpleFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
                                                          throws IOException, ServletException {
        System.out.println("���� �� �� ������Ʈ�� ���۵� ���Դϴ�.");
        chain.doFilter(request, response);
        System.out.println("���� �� �� ������Ʈ�� �Ϸ�Ǿ����ϴ�.");
    }        
    public void destroy() {
    }
}
