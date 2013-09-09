package mylistener;
import javax.servlet.*;
import java.util.*;
public class MyApplicationAttributeListener implements ServletContextAttributeListener {
    public void attributeAdded(ServletContextAttributeEvent event) {
        String name = event.getName();
        String value = (String) event.getValue();
        System.out.printf("[%TT] application 애트리뷰트 입력 %s=%s %n", 
                          new GregorianCalendar(), name, value);
    }
    public void attributeReplaced(ServletContextAttributeEvent event) {
        String name = event.getName();
        String value = (String) event.getValue();
        System.out.printf("[%TT] application 애트리뷰트 수정 %s=%s %n", 
                          new GregorianCalendar(), name, value);
    }
    public void attributeRemoved(ServletContextAttributeEvent event) {
        String name = event.getName();
        String value = (String) event.getValue();
        System.out.printf("[%TT] application 애트리뷰트 삭제 %s=%s %n", 
                          new GregorianCalendar(), name, value);
    }
}
