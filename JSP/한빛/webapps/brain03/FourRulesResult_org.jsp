<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>��Ģ����</TITLE></HEAD>
    <BODY>
        ������ �����? <%= request.getAttribute("SUM") %> <BR>
        ������ �����? <%= request.getAttribute("DIFFERENCE") %> <BR>
        ������ �����? <%= request.getAttribute("PRODUCT") %> <BR>
        �������� �����? <%= request.getAttribute("QUOTIENT") %> <BR>
    </BODY>
</HTML>
