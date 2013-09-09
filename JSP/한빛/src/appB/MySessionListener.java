package mylistener;
import javax.servlet.http.*;
import java.util.*;
public class MySessionListener implements HttpSessionListener {
    public void sessionCreated(HttpSessionEvent event) {
        HttpSession session = event.getSession();
        System.out.printf("[%TT] 세션이 시작되었습니다. (%s) %n", 
                                 new GregorianCalendar(), session.getId());
    }
    public void sessionDestroyed(HttpSessionEvent event) {
        HttpSession session = event.getSession();
        System.out.printf("[%TT] 세션이 끝났습니다. (%s) %n", 
                                 new GregorianCalendar(), session.getId());
    }
}
