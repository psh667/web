<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<HTML>
    <HEAD><TITLE>���󸶴� �ٸ� ����</TITLE></HEAD>
    <BODY>
        <H3>�츮������ ����</H3>
        <fmt:setLocale value="ko_kr" />
        �ݾ�: <fmt:formatNumber value="1000000" type="currency" /> <BR>
        �Ͻ�: <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />  <BR>
        <H3>�̱��� ����</H3>
        <fmt:setLocale value="en_us" />
        �ݾ�: <fmt:formatNumber value="1000000" type="currency"  /> <BR>
        �Ͻ�: <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />  <BR>
        <H3>�Ϻ��� ����</H3>
        <fmt:setLocale value="ja_jp" />
        �ݾ�: <fmt:formatNumber value="1000000" type="currency" /> <BR>
        �Ͻ�: <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />  <BR>
    </BODY>
</HTML>
