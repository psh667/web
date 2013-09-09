package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch11.logon.LogonDataBean;
import ch11.logon.LogonDBBean;
import ch19.action.CommandAction;

public class LogonModifyFormAction implements CommandAction {//ȸ������ ���� �� ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response) throws Throwable {

        String id = request.getParameter("id");

        LogonDBBean dbPro = LogonDBBean.getInstance();
        LogonDataBean member =  dbPro.getMember(id);

		//�ش� �信�� ����� �Ӽ�
        request.setAttribute("member", member);

        return "/appendix/logon/modifyForm.jsp";//�ش��
    }
}
