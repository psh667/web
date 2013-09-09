<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="tool" uri="/taglibs/tools.tld" %>
<HTML>
    <HEAD><TITLE>최소값 구하기</TITLE></HEAD>
    <BODY>
         <tool:min num1="${param.NUM1}" num2="${param.NUM2}" /> 
         최소값: ${minimum}
    </BODY>
</HTML> 
