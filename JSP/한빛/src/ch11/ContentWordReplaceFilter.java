package myfilter;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
public class ContentWordReplaceFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
                             throws IOException, ServletException {
        ContentWordReplaceResponseWrapper responseWrapper 
                            = new ContentWordReplaceResponseWrapper((HttpServletResponse) response);
        chain.doFilter(request, responseWrapper);
        responseWrapper.modifyAndSend();
    }        
    public void destroy() {
    }
}
