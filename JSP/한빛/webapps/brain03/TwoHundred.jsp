<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>1���� 200������ ��</TITLE></HEAD>
    <BODY>
        <%
            int total = 0;
            for (int cnt = 1; cnt <= 100; cnt++)
                total += cnt;
        %>
        1���� 100������ �� = <%= total %> <BR>
        <% 
            for (int cnt = 101; cnt <= 200; cnt++)
                total += cnt;
        %>
        1���� 200������ �� = <%= total %> <BR>
    </BODY>
</HTML>
