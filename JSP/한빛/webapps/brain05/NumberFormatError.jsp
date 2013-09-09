<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>숫자 포맷 에러</TITLE></HEAD>
    <BODY>
        숫자 포맷이 잘못되었습니다. <BR><BR>
        상세 에러 메시지: <%= exception.getMessage() %>
    </BODY>
</HTML>
