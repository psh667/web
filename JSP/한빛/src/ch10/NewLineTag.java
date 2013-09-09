package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class NewLineTag extends SimpleTagSupport {
    private int size;
    private String color;
    public void setSize(Integer size) {
        this.size = size;
    }
    public void setColor(String color) {
        this.color = color;
    }
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        out.println("<FONT color=" + color + ">");
        for (int cnt = 0; cnt < size; cnt++) {
            out.print("*");
        } 
        out.println("</FONT><BR>");
        return;
    }
}	
