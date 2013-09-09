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
			result = "하하하";
		} else if(message.equals("name")) {
			result = "홍길동입니다.";
		} else {
			result = "타입이 맞지 않습니다.";
		}
		request.setAttribute("result",result);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ch18/messageView1.jsp");
		dispatcher.forward(request,response);
	}
} 
