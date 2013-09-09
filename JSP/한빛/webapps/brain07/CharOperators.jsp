<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD><TITLE>익스프레션 언어 연산자 연습</TITLE></HEAD>
    <BODY>
        ${param.NUM1}을 ${param.NUM2}로 나눈 몫은? ${param.NUM1 div param.NUM2} <BR>
        나머지는? ${param.NUM1 mod param.NUM2} <BR><BR>
        둘 다 양수입니까? ${(param.NUM1 gt 0) and (param.NUM2 gt 0)} <BR>
        둘 다 음수입니까? ${(param.NUM1 lt 0) and (param.NUM2 lt 0)} <BR>
    </BODY>
</HTML>
