package myfilter;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
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
    public String[] getParameterValues(String name) {
        String str[] = request.getParameterValues(name);
        if (str == null)
            return null;
        for (int cnt = 0; cnt < str.length; cnt++)
            str[cnt] = str[cnt].toUpperCase();
        return str;
    }
    public Map getParameterMap() {
        Map map = request.getParameterMap();
        HashMap<String, String[]> newMap = new HashMap<String, String[]>();
        Object name[] = map.keySet().toArray();
        for (int cnt = 0; cnt < name.length; cnt++) {
            String value[] = (String[]) map.get(name[cnt]);
            for (int index = 0; index < value.length; index++)
                value[index] = value[index].toUpperCase();
            newMap.put((String) name[cnt], value);
        }
        return newMap;
    }
}
