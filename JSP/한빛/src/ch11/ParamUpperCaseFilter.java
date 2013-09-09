package myfilter;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class ParamUpperCaseFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
                             throws IOException, ServletException {
        ParamUpperCaseRequestWrapper requestWrapper 
                      = new ParamUpperCaseRequestWrapper((HttpServletRequest) request);
        chain.doFilter(requestWrapper, response);
    }        
    public void destroy() {
    }
}
