<%@page contentType="text/html; charset=euc-kr"%>
<%
    response.addCookie(new Cookie("NAME", "John"));
    response.addCookie(new Cookie("GENDER", "Male"));
    response.addCookie(new Cookie("AGE", "15"));
%>
<HTML>
    <HEAD><TITLE>��Ű ������ �����ϱ�</TITLE></HEAD>
    <BODY>
        ��Ű �����Ͱ� ����Ǿ����ϴ�.<BR><BR>
    </BODY>
</HTML>
