<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<HTML>
    <HEAD><TITLE>현재의 시각</TITLE></HEAD>
    <BODY>
        [오늘의 날짜] <fmt:formatDate  value="${date}" type="date" pattern="yyyy/MM/dd (E)" /> <BR>
        [현재의 시각] <fmt:formatDate  value="${date}" type="time" pattern="(a) hh:mm:ss" />
    </BODY>
</HTML>

