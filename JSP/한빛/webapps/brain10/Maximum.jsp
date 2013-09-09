<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<HTML>
    <HEAD><TITLE>최대값 구하기</TITLE></HEAD>
    <BODY>
        <H3>최대값 구하기</H3>
        <util:max num1="${param.NUM1}" num2="${param.NUM2}" />
        최대값: ${maximum}
    </BODY>
</HTML> 
