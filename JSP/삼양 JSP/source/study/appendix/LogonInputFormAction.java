package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ch19.action.CommandAction;

public class LogonInputFormAction implements CommandAction {//ȸ������ �� ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)throws Throwable {
     
        return "/appendix/logon/inputForm.jsp";//�ش� ��
    }
}
