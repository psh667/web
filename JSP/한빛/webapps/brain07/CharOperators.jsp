<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD><TITLE>�ͽ������� ��� ������ ����</TITLE></HEAD>
    <BODY>
        ${param.NUM1}�� ${param.NUM2}�� ���� ����? ${param.NUM1 div param.NUM2} <BR>
        ��������? ${param.NUM1 mod param.NUM2} <BR><BR>
        �� �� ����Դϱ�? ${(param.NUM1 gt 0) and (param.NUM2 gt 0)} <BR>
        �� �� �����Դϱ�? ${(param.NUM1 lt 0) and (param.NUM2 lt 0)} <BR>
    </BODY>
</HTML>
