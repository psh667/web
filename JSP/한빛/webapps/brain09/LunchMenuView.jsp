<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>���� �Ĵ�</TITLE></HEAD>
    <BODY>
        <H3>������ ���� �޴��Դϴ�.</H3>
        <UL>
            <c:forEach var="dish" items="${MENU}">
                <LI>${dish}</LI>
            </c:forEach>
        </UL>
    </BODY>
</HTML> 