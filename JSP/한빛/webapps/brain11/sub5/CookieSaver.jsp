<%@page contentType="text/html; charset=euc-kr"%>
<% 
    Cookie cookie = new Cookie("CART", "Lemon, Apple, Chocolate");
    response.addCookie(cookie); 
%>
<HTML>
    <HEAD><TITLE>��Ű �����ϱ�</TITLE></HEAD>
    <BODY>
        ��Ű�� ����Ǿ����ϴ�.
    </BODY>
</HTML>
