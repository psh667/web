<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="greeting" value="How Are You?" />
<HTML>
    <HEAD><TITLE>여러가지 인사말</TITLE></HEAD>
    <BODY>
        본래의 문자열: ${greeting} <BR>
        모두 대문자로: ${fn:toUpperCase(greeting)} <BR>
        모두 소문자로: ${fn:toLowerCase(greeting)} <BR>
        Are의 위치는? ${fn:indexOf(greeting, "Are")} <BR>
        Are를 Were로 바꾸면? ${fn:replace(greeting, "Are", "Were")} <BR>
        문자열의 길이는? ${fn:length(greeting)} <BR>
    </BODY>
</HTML>
