<%@page contentType="text/html; charset=euc-kr"%>
<%
    String winners[] = new String[3];
    winners[0] = "�̼���";
    winners[1] = "������";
    winners[2] = "������";
    request.setAttribute("WINNERS", winners);
    RequestDispatcher dispatcher = request.getRequestDispatcher("WinnersView.jsp");
    dispatcher.forward(request, response); 
%>