<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<HTML>
    <HEAD><TITLE>������ �ð�</TITLE></HEAD>
    <BODY>
        [������ ��¥] <fmt:formatDate  value="${date}" type="date" pattern="yyyy/MM/dd (E)" /> <BR>
        [������ �ð�] <fmt:formatDate  value="${date}" type="time" pattern="(a) hh:mm:ss" />
    </BODY>
</HTML>

