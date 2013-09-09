<%@page contentType="text/html; charset=euc-kr"%>
<% 
    Cookie cookie = new Cookie("CART", "Lemon, Apple, Chocolate");
    response.addCookie(cookie); 
%>
<HTML>
    <HEAD><TITLE>쿠키 저장하기</TITLE></HEAD>
    <BODY>
        쿠키가 저장되었습니다.
    </BODY>
</HTML>
