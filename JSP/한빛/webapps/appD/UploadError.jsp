<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>���� ���ε� ���� ������</TITLE></HEAD>
    <BODY>
        ���� ���ε� ������ �߻��߽��ϴ�. <BR><BR>
        �� ���� �޽���: <%= exception.getMessage() %>
    </BODY>
</HTML>