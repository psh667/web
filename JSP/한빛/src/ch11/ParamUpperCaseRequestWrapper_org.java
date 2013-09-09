package myfilter;
import javax.servlet.http.*;
import java.io.*;
public class ParamUpperCaseRequestWrapper extends HttpServletRequestWrapper {
    HttpServletRequest request;
    public ParamUpperCaseRequestWrapper(HttpServletRequest request) {
        super(request);
        this.request = request;
    }
    public String getParameter(String name) {
        String str = request.getParameter(name);
        if (str == null)
            return null;
        return str.toUpperCase();
    }
}
