<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="tool" uri="/taglibs/tools.tld" %>
<HTML>
    <HEAD><TITLE>�ּҰ� ���ϱ�</TITLE></HEAD>
    <BODY>
         <tool:min num1="${param.NUM1}" num2="${param.NUM2}" /> 
         �ּҰ�: ${minimum}
    </BODY>
</HTML> 
