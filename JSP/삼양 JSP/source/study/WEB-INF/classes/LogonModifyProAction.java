package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch11.logon.LogonDataBean;
import ch11.logon.LogonDBBean;
import ch19.action.CommandAction;

public class LogonModifyProAction implements CommandAction {//ȸ���������� ó��

    public String requestPro( HttpServletRequest request,
        HttpServletResponse response) throws Throwable {

        request.setCharacterEncoding("euc-kr");

        String id = request.getParameter("id");

		LogonDataBean member = new LogonDataBean();
        member.setPasswd(request.getParameter("passwd"));
        member.setName(request.getParameter("name"));
        member.setEmail(request.getParameter("email"));
        member.setBlog(request.getParameter("blog"));
        member.setId(request.getParameter("id"));
	    
        LogonDBBean dbPro = LogonDBBean.getInstance();
        dbPro.updateMember(member);
        return "/appendix/logon/modifyPro.jsp";//�ش� ��
    }
}
