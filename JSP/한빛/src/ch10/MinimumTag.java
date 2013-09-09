package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class MinimumTag extends SimpleTagSupport {
    private int num1, num2;
    public void setNum1(Integer num1) {
        this.num1 = num1;
    }
    public void setNum2(Integer num2) {
        this.num2 = num2;
    }
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        if (num1 < num2)
            context.setAttribute("minimum", num1);
        else
            context.setAttribute("minimum", num2);
        return;
    }
}	
