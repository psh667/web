<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<HTML>
    <HEAD><TITLE>����ǥ</TITLE></HEAD>
    <BODY>
        <H3>1���� 5������ ����ǥ</H3>
        <util:compute var="num" start="1" end="5">
            ${num}�� ������? ${num * num} <BR>  
        </util:compute>
    </BODY>
</HTML> 
