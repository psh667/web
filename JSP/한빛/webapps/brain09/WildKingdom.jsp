<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>������ �ձ�</TITLE></HEAD>
    <BODY>
        ������ ������ġ�� ���� �������? <BR><BR>
        <c:set var="guests" value="�䳢^^�ź���~�罿" />
        <c:forTokens var="animal" items="${guests}" delims="^~" > 
            ${animal} <BR>
        </c:forTokens>
    </BODY>
</HTML> 
