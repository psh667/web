<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="m" uri="http://hanb.co.kr/brain07/math-functions.tld"%>
<HTML>
    <HEAD><TITLE>�־��� ������ �� ���ϱ�</TITLE></HEAD>
    <BODY>
        ${param.NUM1}���� ${param.NUM2}������ ����? <BR><BR>
        ��: ${m:total(param.NUM1, param.NUM2)} 
    </BODY>
</HTML>
