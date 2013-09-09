import java.awt.*;
import javax.swing.*;
public class HelloJavaApplet extends JApplet {
    public void init() {
        Container contentPane = getContentPane();
        contentPane.add(new JLabel("Hello, Java", SwingConstants.CENTER));
    }
}
