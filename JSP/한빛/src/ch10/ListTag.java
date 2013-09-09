package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class ListTag extends SimpleTagSupport {
    public void doTag() throws JspException, IOException {
        JspFragment body = getJspBody();
        body.invoke(null);
        return;
    }
}	
