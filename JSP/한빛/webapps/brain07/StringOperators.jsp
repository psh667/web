<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD><TITLE>문자열 비교</TITLE></HEAD>
    <BODY>
        입력 문자열 : ${param.STR1}, ${param.STR2} <BR><BR>
        두 문자열이 같습니까? ${param.STR1 == param.STR2} <BR>
        어느 문자열이 먼저입니까? ${param.STR1 < param.STR2 ? param.STR1 : param.STR2}
    </BODY>
</HTML>
