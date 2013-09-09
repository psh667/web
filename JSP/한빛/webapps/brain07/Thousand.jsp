<%@page contentType="text/html; charset=euc-kr"%>
<%
    int sum = 0;
    for (int cnt = 1; cnt <= 1000; cnt++)
        sum += cnt;
    pageContext.setAttribute("RESULT", new Integer(sum));
%>
<HTML>
    <HEAD><TITLE>1부터 1000까지의 합</TITLE></HEAD>
    <BODY>
        1부터 1000까지 더한 결과는? ${RESULT}
    </BODY>
</HTML>
