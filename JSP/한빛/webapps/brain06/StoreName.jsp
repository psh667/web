<%@page contentType="text/html; charset=euc-kr"%>
<%
    String name = request.getParameter("NAME");
    application.setAttribute("NAME", name); 
%>
<HTML>
    <HEAD><TITLE>웹 애플리케이션 데이터 저장하기</TITLE></HEAD>
    <BODY>
         NAME 데이터가 저장되었습니다.          
    </BODY>
</HTML>
