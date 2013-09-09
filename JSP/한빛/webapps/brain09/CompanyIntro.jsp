<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="Intro" />
<HTML>
    <HEAD><TITLE><fmt:message key="TITLE" /></TITLE></HEAD>
    <BODY>
        <H3><fmt:message key="TITLE" /></H3>
        <fmt:message key="GREETING" /> <BR><BR>
        <fmt:message key="BODY" /> <BR><BR>
        <FONT size=2><fmt:message key="COMPANY_NAME" /></FONT>
    </BODY>
</HTML>
