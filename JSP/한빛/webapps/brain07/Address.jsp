<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*" %>
<%
    HashMap<String, String> map = new HashMap<String, String>();
    map.put("Edgar", "������");
    map.put("Thomas", "�����̿�");
    map.put("John", "������");
    request.setAttribute("ADDRESS", map);
    RequestDispatcher dispatcher = request.getRequestDispatcher("AddressView.jsp");
    dispatcher.forward(request, response); 
%>
