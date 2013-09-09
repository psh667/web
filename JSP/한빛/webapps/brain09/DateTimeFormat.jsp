<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<HTML>
    <HEAD><TITLE>현재의 시각</TITLE></HEAD>
    <BODY>
        [S] <fmt:formatDate value="${date}" type="both" dateStyle="short"  timeStyle="short"  /> <BR>
        [M] <fmt:formatDate value="${date}" type="both" dateStyle="medium" timeStyle="medium" /> <BR>
        [L] <fmt:formatDate value="${date}" type="both" dateStyle="long"   timeStyle="long"   /> <BR>
        [F] <fmt:formatDate value="${date}" type="both" dateStyle="full"   timeStyle="full"   /> 
    </BODY>
</HTML>
