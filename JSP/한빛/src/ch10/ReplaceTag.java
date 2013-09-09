package tool;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class ReplaceTag extends SimpleTagSupport {
    private String oldWord, newWord;
    public void setOldWord(String oldWord) {
        this.oldWord = oldWord;
    }
    public void setNewWord(String newWord) {
        this.newWord = newWord;
    }
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        JspFragment body = getJspBody();
        StringWriter writer = new StringWriter();
        body.invoke(writer);
        String str = writer.toString();
        String newStr = str.replaceAll(oldWord, newWord);
        out.print(newStr);        
        return;
    }
}		
