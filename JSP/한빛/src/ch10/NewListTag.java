package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class NewListTag extends SimpleTagSupport {
    private char bullet;
    public void setBullet(char bullet) {
        this.bullet = bullet;
    }
    public char getBullet() {
        return bullet;
    }
    public void doTag() throws JspException, IOException {
        JspFragment body = getJspBody();
        body.invoke(null);
        return;
    }
}
