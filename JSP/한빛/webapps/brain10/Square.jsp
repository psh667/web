<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<HTML>
    <HEAD><TITLE>제곱표</TITLE></HEAD>
    <BODY>
        <H3>1부터 5까지의 제곱표</H3>
        <util:compute var="num" start="1" end="5">
            ${num}의 제곱은? ${num * num} <BR>  
        </util:compute>
    </BODY>
</HTML> 
