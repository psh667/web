<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>��� ���� ����</TITLE></HEAD>
    <BODY>
        ��� ���� ���߿� ������ �߻��߽��ϴ�. <BR><BR>
        �� ���� �޽���: <%= exception.getMessage() %>
    </BODY>
</HTML>
