<%@page contentType="text/html; charset=euc-kr"%>
<%
    Cookie cookie = new Cookie("JOB", "programmer");
    cookie.setPath("/brain04/sub1/");
    response.addCookie(cookie);
%>
<HTML>
    <HEAD><TITLE>��Ű ������ �����ϱ�</TITLE></HEAD>
    <BODY>
        JOB ��Ű�� ����Ǿ����ϴ�. <BR><BR>
    </BODY>
</HTML>
