<%@page contentType="text/html; charset=euc-kr" %>
<%
    Cookie cookie = new Cookie("NAME", "John");
    response.addCookie(cookie);
%>
<HTML>
    <HEAD><TITLE>��Ű ������ ���� ���α׷�</TITLE></HEAD>
    <BODY>
        ��Ű ���� �����Ǿ����ϴ�.
    </BODY>
</HTML>
