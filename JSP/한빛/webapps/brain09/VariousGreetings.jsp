<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="greeting" value="How Are You?" />
<HTML>
    <HEAD><TITLE>�������� �λ縻</TITLE></HEAD>
    <BODY>
        ������ ���ڿ�: ${greeting} <BR>
        ��� �빮�ڷ�: ${fn:toUpperCase(greeting)} <BR>
        ��� �ҹ��ڷ�: ${fn:toLowerCase(greeting)} <BR>
        Are�� ��ġ��? ${fn:indexOf(greeting, "Are")} <BR>
        Are�� Were�� �ٲٸ�? ${fn:replace(greeting, "Are", "Were")} <BR>
        ���ڿ��� ���̴�? ${fn:length(greeting)} <BR>
    </BODY>
</HTML>
