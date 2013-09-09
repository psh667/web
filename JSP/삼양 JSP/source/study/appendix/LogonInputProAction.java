package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;

import ch11.logon.LogonDataBean;
import ch11.logon.LogonDBBean;
import ch19.action.CommandAction;

public class LogonInputProAction implements CommandAction {//ȸ������ ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)  throws Throwable {

        request.setCharacterEncoding("euc-kr");//�ѱ� ���ڵ�
        
        LogonDataBean member = new LogonDataBean();//������ó�� ��
		member.setId(request.getParameter("id"));
        member.setPasswd(request.getParameter("passwd"));
        member.setName(request.getParameter("name"));
        member.setJumin1(request.getParameter("jumin1"));
        member.setJumin2(request.getParameter("jumin2"));
		member.setEmail(request.getParameter("email"));
		member.setBlog(request.getParameter("blog"));
        member.setReg_date(new Timestamp(System.currentTimeMillis()));

        LogonDBBean dbPro = LogonDBBean.getInstance();//DBó��
        dbPro.insertMember(member);

        return "/appendix/logon/inputPro.jsp";//�ش� ��
    }
}
