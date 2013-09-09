<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>인사하기</TITLE></HEAD>
    <BODY>
        <c:choose> 
            <c:when test="${param.NUM == 0}"> 
                처음 뵙겠습니다. <BR>
            </c:when> 
            <c:when test="${param.NUM == 1}"> 
                반갑습니다. <BR>
            </c:when> 
            <c:otherwise> 
                안녕하세요. <BR>
            </c:otherwise> 
        </c:choose> 
    </BODY>
</HTML> 
