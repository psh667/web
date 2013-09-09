<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:bundle basename="Welcome" >
    <fmt:message var="title" key="TITLE" />
    <fmt:message var="greeting" key="GREETING" >
        <fmt:param>${ID}</fmt:param>
        <fmt:param>${VNUM}</fmt:param>
    </fmt:message>
    <fmt:message var="body" key="BODY" />
    <fmt:message var="companyName" key="COMPANY_NAME" />
</fmt:bundle>
<HTML>
    <HEAD><TITLE>${title}</TITLE></HEAD>
    <BODY>
        ${greeting} <BR><BR>
        ${body} <BR><BR>
        <FONT size=2>${companyName}</FONT>
    </BODY>
</HTML>