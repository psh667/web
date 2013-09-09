package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch11.logon.LogonDBBean;
import ch19.action.CommandAction;

public class LoginProAction implements CommandAction {//ȸ������ ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)  throws Throwable {

        request.setCharacterEncoding("euc-kr");//�ѱ� ���ڵ�
        
        String id = request.getParameter("id");
	    String passwd  = request.getParameter("passwd");

        LogonDBBean dbPro = LogonDBBean.getInstance();//DBó��
        int check=dbPro.userCheck(id,passwd);

        //�ش� �信�� ����� �Ӽ�
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", id);


        return "/appendix/logon/loginPro.jsp";//�ش� ��
    }
}
