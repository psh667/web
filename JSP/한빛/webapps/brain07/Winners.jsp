<%@page contentType="text/html; charset=euc-kr"%>
<%
    String winners[] = new String[3];
    winners[0] = "ÀÌ¼öÇö";
    winners[1] = "Á¤¼¼ÈÆ";
    winners[2] = "±èÁøÈñ";
    request.setAttribute("WINNERS", winners);
    RequestDispatcher dispatcher = request.getRequestDispatcher("WinnersView.jsp");
    dispatcher.forward(request, response); 
%>