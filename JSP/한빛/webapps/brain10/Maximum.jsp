<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<HTML>
    <HEAD><TITLE>�ִ밪 ���ϱ�</TITLE></HEAD>
    <BODY>
        <H3>�ִ밪 ���ϱ�</H3>
        <util:max num1="${param.NUM1}" num2="${param.NUM2}" />
        �ִ밪: ${maximum}
    </BODY>
</HTML> 
