package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class BoxTag extends SimpleTagSupport {
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        JspFragment body = getJspBody();
        out.println("<TABLE border=1 cellpadding=20><TR><TD>");
        body.invoke(out);
        out.println("</TD></TR></TABLE>");
        return;
    }
}	
