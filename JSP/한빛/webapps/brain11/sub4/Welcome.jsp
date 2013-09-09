<%@page contentType="text/html; charset=euc-kr"%>
<% String name = request.getParameter("NAME"); %>
<HTML>
    <HEAD><TITLE>환영 인사</TITLE></HEAD>
    <BODY>
        안녕하세요, <%= name %>님.
    </BODY>
</HTML>
