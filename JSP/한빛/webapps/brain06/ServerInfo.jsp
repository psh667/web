<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>�� ������ ����</TITLE></HEAD>
    <BODY>
        �� ������ ����: <%= application.getServerInfo() %> <BR>
        �����ϴ� ���� ����: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> <BR>
    </BODY>
</HTML>    
