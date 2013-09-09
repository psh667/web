<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<HTML>
    <HEAD><TITLE>세계시 프로그램</TITLE></HEAD>
    <BODY>
        서울: <fmt:formatDate value="${date}" type="both" />  <BR>
        <fmt:setTimeZone value="Asia/Hong_Kong" /> 
        홍콩: <fmt:formatDate value="${date}" type="both" />  <BR>
        <fmt:setTimeZone value="Europe/London" /> 
        런던: <fmt:formatDate value="${date}" type="both" />  <BR>
        <fmt:setTimeZone value="America/New_York" /> 
        뉴욕: <fmt:formatDate value="${date}" type="both" />  <BR>
    </BODY>
</HTML>
