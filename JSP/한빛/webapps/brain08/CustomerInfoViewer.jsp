<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>ȸ�� ����</TITLE></HEAD>
    <BODY>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" scope="request" /> 
        �̸�: <jsp:getProperty name="pinfo" property="name" /> <BR>
        ����: <jsp:getProperty name="pinfo" property="gender" /> <BR>
        ����: <jsp:getProperty name="pinfo" property="age" />
    </BODY>
</HTML>
