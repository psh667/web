<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD><TITLE>���ڿ� ��</TITLE></HEAD>
    <BODY>
        �Է� ���ڿ� : ${param.STR1}, ${param.STR2} <BR><BR>
        �� ���ڿ��� �����ϱ�? ${param.STR1 == param.STR2} <BR>
        ��� ���ڿ��� �����Դϱ�? ${param.STR1 < param.STR2 ? param.STR1 : param.STR2}
    </BODY>
</HTML>
