<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>ȸ�� ����</TITLE></HEAD>
    <BODY>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" /> 
        <jsp:setProperty name="pinfo" property="name" value="�迬��" /> 
        <jsp:setProperty name="pinfo" property="gender" value="��" /> 
        <jsp:setProperty name="pinfo" property="age" value="29" /> 
        �̸�: <jsp:getProperty name="pinfo" property="name" /> <BR>
        ����: <jsp:getProperty name="pinfo" property="gender" /> <BR>
        ����: <jsp:getProperty name="pinfo" property="age" />
    </BODY>
</HTML>
