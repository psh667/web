<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>���� ���α׷� - ���� �߻�</TITLE></HEAD>
    <BODY>
        �߸��� �����Ͱ� �ԷµǾ����ϴ�. <BR><BR>
        �� ���� �޽���: <%= exception.getMessage() %>
    </BODY>
</HTML>
