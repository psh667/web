package ch18.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessageController extends HttpServlet {

    public void doGet(HttpServletRequest request, //1�ܰ� : ������� ��û�� �޴� ���� �޼ҵ�
                         HttpServletResponse response)
    throws ServletException, IOException {
        requestPro(request, response);
    }

    public void doPost(HttpServletRequest request, //1�ܰ� : ������� ��û�� �޴� ���� �޼ҵ�
                          HttpServletResponse response)
    throws ServletException, IOException {
        requestPro(request, response);
    }
    
    private void requestPro(HttpServletRequest request, 
                                HttpServletResponse response)
    throws ServletException ,IOException{
        String message = request.getParameter("message");//2�ܰ� : ������� ��û�м�
        
        Object result = null;
        if (message == null || message.equals("base")) {//3�ܰ� : ������� ��û�� ���� �۾�ó��
            result = "������.";
        } else if (message.equals("name")) {
            result = "ȫ�浿 �Դϴ�.";
        } else {
            result = "Ÿ���� ���� �ʽ��ϴ�.";
        }
        
        request.setAttribute("result", result);//4�ܰ� : request�� �Ӽ��� ó����� ����
        
        // 5�ܰ� : RequestDispatcher�� ����Ͽ� �ش� ��� ������
        RequestDispatcher dispatcher = 
			           request.getRequestDispatcher("/ch18/messageView.jsp");
        dispatcher.forward(request, response);
    }
}
