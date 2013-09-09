<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>구내 식당</TITLE></HEAD>
    <BODY>
        <H3>오늘의 점심 메뉴입니다.</H3>
        <UL>
            <c:forEach var="dish" items="${MENU}">
                <LI>${dish}</LI>
            </c:forEach>
        </UL>
    </BODY>
</HTML> 