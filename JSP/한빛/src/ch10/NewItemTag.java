package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class NewItemTag extends SimpleTagSupport {
    public void doTag() throws JspException, IOException {
        JspTag parent = getParent();
        if ((parent == null) || !(parent instanceof NewListTag))
            throw new JspException("The Parent is not NewListTag");
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        JspFragment body = getJspBody();
        char bullet = ((NewListTag) parent).getBullet();
        out.print(bullet);
        body.invoke(null);
        out.println("<BR>");
        return;
    }
}