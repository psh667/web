<%@page contentType="text/html; charset=euc-kr"%>
<%
    Cookie cookie = new Cookie("GENDER", "");
    cookie.setMaxAge(0);
    response.addCookie(cookie);
%>
<HTML>
    <HEAD><TITLE>��Ű �����ϱ�</TITLE></HEAD>
    <BODY>
        GENDER ��Ű�� �����Ǿ����ϴ�.
    </BODY>
</HTML>
