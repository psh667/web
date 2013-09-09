<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*" %>
<%
    ArrayList<String> items = new ArrayList<String>();
    items.add("µþ±â");
    items.add("¿À·»Áö");
    items.add("º¹¼þ¾Æ");
    request.setAttribute("FRUITS", items);
    RequestDispatcher dispatcher = request.getRequestDispatcher("FruitsView.jsp");
    dispatcher.forward(request, response); 
%>
