<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*" %>
<%
    ArrayList<String> items = new ArrayList<String>();
    items.add("����");
    items.add("������");
    items.add("������");
    request.setAttribute("FRUITS", items);
    RequestDispatcher dispatcher = request.getRequestDispatcher("FruitsView.jsp");
    dispatcher.forward(request, response); 
%>
