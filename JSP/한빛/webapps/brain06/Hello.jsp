<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD><TITLE>인사하기</TITLE></HEAD>
    <BODY>
        안녕하세요, <%= request.getParameter("NAME") %>님
        <% application.log("[인사하기] JSP 페이지가 호출되었습니다. "); %>
    </BODY>
</HTML>
