<%@page contentType="text/html; charset=euc-kr"%>
<%
    request.setAttribute("ID", "Spiderman");
    request.setAttribute("VNUM", new Integer(3));
%>    
<jsp:forward page="WelcomeView.jsp" />
