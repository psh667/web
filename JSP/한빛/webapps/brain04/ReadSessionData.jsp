<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>���� �����͸� �д� JSP ������</TITLE></HEAD>
    <BODY>
        �̸�: <%= session.getAttribute("NAME") %> <BR>
        ����: <%= session.getAttribute("AGE") %> <BR>
        ����: <%= session.getAttribute("GENDER") %> 
    </BODY>
</HTML>
