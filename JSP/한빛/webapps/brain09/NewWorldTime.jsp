<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<HTML>
    <HEAD><TITLE>����� ���α׷�</TITLE></HEAD>
    <BODY>
        ����: <fmt:formatDate value="${date}" type="both" />  <BR>
        <fmt:setTimeZone value="Asia/Hong_Kong" /> 
        ȫ��: <fmt:formatDate value="${date}" type="both" />  <BR>
        <fmt:setTimeZone value="Europe/London" /> 
        ����: <fmt:formatDate value="${date}" type="both" />  <BR>
        <fmt:setTimeZone value="America/New_York" /> 
        ����: <fmt:formatDate value="${date}" type="both" />  <BR>
    </BODY>
</HTML>
