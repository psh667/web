<%@page contentType="text/html; charset=euc-kr"%>
<%
    Cookie cookie = new Cookie("LOGIN_ID", "lion2010");
    cookie.setDomain(".hanb.co.kr");
    response.addCookie(cookie);
%>
<HTML>
    <HEAD><TITLE>��Ű ������ �����ϱ�</TITLE></HEAD>
    <BODY>
        LOGIN_ID ��Ű�� ����Ǿ����ϴ�.
    </BODY>
</HTML>
