<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>1���� 100������ ��</TITLE></HEAD>
    <BODY>
        <% int total = 0;
           for (int cnt = 1; cnt <= 100; cnt++)
               total += cnt;
        %>
        1���� 100���� ���� ����? <%= total %>
    </BODY>
</HTML>
