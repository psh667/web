<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<HTML>
    <HEAD><TITLE>나라마다 다른 포맷</TITLE></HEAD>
    <BODY>
        <H3>우리나라의 포맷</H3>
        <fmt:setLocale value="ko_kr" />
        금액: <fmt:formatNumber value="1000000" type="currency" /> <BR>
        일시: <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />  <BR>
        <H3>미국의 포맷</H3>
        <fmt:setLocale value="en_us" />
        금액: <fmt:formatNumber value="1000000" type="currency"  /> <BR>
        일시: <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />  <BR>
        <H3>일본의 포맷</H3>
        <fmt:setLocale value="ja_jp" />
        금액: <fmt:formatNumber value="1000000" type="currency" /> <BR>
        일시: <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />  <BR>
    </BODY>
</HTML>
