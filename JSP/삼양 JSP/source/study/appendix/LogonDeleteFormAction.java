package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ch19.action.CommandAction;

public class LogonDeleteFormAction implements CommandAction {//ȸ��Ż�� �� ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response) throws Throwable {

        return "/appendix/logon/deleteForm.jsp";//�ش��
    }
}
