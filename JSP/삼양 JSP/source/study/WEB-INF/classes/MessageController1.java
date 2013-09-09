package ch18.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessageController1  extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		requestPro(request,response);
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		requestPro(request,response);
	}
	
	private void requestPro(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		String message = request.getParameter("message");
		
		Object result = null;
		if(message==null || message.equals("base")) {
			result = "������";
		} else if(message.equals("name")) {
			result = "ȫ�浿�Դϴ�.";
		} else {
			result = "Ÿ���� ���� �ʽ��ϴ�.";
		}
		request.setAttribute("result",result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ch18/messageView1.jsp");
		dispatcher.forward(request,response);
	}
} 
