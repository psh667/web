<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="Intro" />
<fmt:message var="title" key="TITLE" />
<fmt:message var="greeting" key="GREETING" />
<fmt:message var="body" key="BODY" />
<fmt:message var="companyName" key="COMPANY_NAME" />
<HTML>
    <HEAD><TITLE>${title}</TITLE></HEAD>
    <BODY>
        <H3>${title}</H3>
        ${greeting} <BR><BR>
        ${body} <BR><BR>
        <FONT size=2>${companyName}</FONT>
    </BODY>
</HTML>
