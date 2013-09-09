package mylistener;
import javax.servlet.http.*;
import java.util.*;
public class MySessionListener implements HttpSessionListener {
    public void sessionCreated(HttpSessionEvent event) {
        HttpSession session = event.getSession();
        System.out.printf("[%TT] ������ ���۵Ǿ����ϴ�. (%s) %n", 
                                 new GregorianCalendar(), session.getId());
    }
    public void sessionDestroyed(HttpSessionEvent event) {
        HttpSession session = event.getSession();
        System.out.printf("[%TT] ������ �������ϴ�. (%s) %n", 
                                 new GregorianCalendar(), session.getId());
    }
}
