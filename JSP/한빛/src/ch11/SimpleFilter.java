package myfilter;
import javax.servlet.*;
import java.io.*;
public class SimpleFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
                                                          throws IOException, ServletException {
        System.out.println("이제 곧 웹 컴포넌트가 시작될 것입니다.");
        chain.doFilter(request, response);
        System.out.println("이제 막 웹 컴포넌트가 완료되었습니다.");
    }        
    public void destroy() {
    }
}
