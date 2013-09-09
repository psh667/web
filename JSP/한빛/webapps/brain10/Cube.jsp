<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<HTML>
    <HEAD><TITLE>세제곱표</TITLE></HEAD>
    <BODY>
        <H3>1부터 5까지의 세제곱표</H3>
        <util:compute var="num" start="1" end="7">
            ${num}의 세제곱은? ${num * num * num} <BR>  
        </util:compute>
    </BODY>
</HTML> 
