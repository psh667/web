<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>동물의 왕국</TITLE></HEAD>
    <BODY>
        사자의 생일잔치에 누가 왔을까요? <BR><BR>
        <c:set var="guests" value="토끼^^거북이~사슴" />
        <c:forTokens var="animal" items="${guests}" delims="^~" > 
            ${animal} <BR>
        </c:forTokens>
    </BODY>
</HTML> 
