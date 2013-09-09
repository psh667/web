package mylistener;
import javax.servlet.*;
import java.util.*;
public class MyApplicationAttributeListener implements ServletContextAttributeListener {
    public void attributeAdded(ServletContextAttributeEvent event) {
        String name = event.getName();
        String value = (String) event.getValue();
        System.out.printf("[%TT] application ��Ʈ����Ʈ �Է� %s=%s %n", 
                          new GregorianCalendar(), name, value);
    }
    public void attributeReplaced(ServletContextAttributeEvent event) {
        String name = event.getName();
        String value = (String) event.getValue();
        System.out.printf("[%TT] application ��Ʈ����Ʈ ���� %s=%s %n", 
                          new GregorianCalendar(), name, value);
    }
    public void attributeRemoved(ServletContextAttributeEvent event) {
        String name = event.getName();
        String value = (String) event.getValue();
        System.out.printf("[%TT] application ��Ʈ����Ʈ ���� %s=%s %n", 
                          new GregorianCalendar(), name, value);
    }
}
