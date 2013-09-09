<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="tool" uri="/taglibs/tools.tld" %>
<HTML>
    <HEAD><TITLE>최소값 구하기 (New)</TITLE></HEAD>
    <BODY>
         <tool:newMin var="MIN" num1="${param.NUM1}" num2="${param.NUM2}" /> 
         최소값: ${MIN}
    </BODY>
</HTML> 

