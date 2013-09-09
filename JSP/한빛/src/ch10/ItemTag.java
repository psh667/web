package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class ItemTag extends SimpleTagSupport {
    public void doTag() throws JspException, IOException {
        JspTag parent = getParent();
        if ((parent == null) || !(parent instanceof ListTag))
            throw new JspException("The Parent is not ListTag");
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        JspFragment body = getJspBody();
        out.print("-");
        body.invoke(null);
        out.println("<BR>");
        return;
    }
}	
