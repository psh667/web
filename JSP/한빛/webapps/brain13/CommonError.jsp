<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>���� ������</TITLE></HEAD>
    <BODY>
    <H4>���� �߻�</H4>
    ���� �޽���: <%= exception.getMessage() %>
    </BODY>
</HTML>
