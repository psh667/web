package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch11.logon.LogonDBBean;
import ch19.action.CommandAction;

public class LogonDeleteProAction implements CommandAction {//ȸ��Ż�� ó��

    public String requestPro( HttpServletRequest request,
        HttpServletResponse response) throws Throwable {

        request.setCharacterEncoding("euc-kr");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
	    
        LogonDBBean dbPro = LogonDBBean.getInstance();
        int check = dbPro.deleteMember(id, passwd);

        //�ش� �信�� ����� �Ӽ�
        request.setAttribute("check", new Integer(check));

        return "/appendix/logon/deletePro.jsp";//�ش��
    }
}
