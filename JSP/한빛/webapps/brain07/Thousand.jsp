<%@page contentType="text/html; charset=euc-kr"%>
<%
    int sum = 0;
    for (int cnt = 1; cnt <= 1000; cnt++)
        sum += cnt;
    pageContext.setAttribute("RESULT", new Integer(sum));
%>
<HTML>
    <HEAD><TITLE>1���� 1000������ ��</TITLE></HEAD>
    <BODY>
        1���� 1000���� ���� �����? ${RESULT}
    </BODY>
</HTML>
