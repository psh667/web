package appendix.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch11.logon.LogonDBBean;
import ch19.action.CommandAction;

public class ConfirmIdAction implements CommandAction {// �ߺ����̵� üũ ó��

    public String requestPro(HttpServletRequest request,
        HttpServletResponse response)  throws Throwable {

        request.setCharacterEncoding("euc-kr");//�ѱ� ���ڵ�
        
        String id = request.getParameter("id");//������Է� ���̵�
		
        LogonDBBean dbPro = LogonDBBean.getInstance();//DBó��
        int check=  dbPro.confirmId(id);

        //�ش� �信�� ����� �Ӽ�
		request.setAttribute("id", id);
		request.setAttribute("check", new Integer(check));

        return "/appendix/logon/confirmId.jsp";//�ش� ��
    }
}
