<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD><TITLE>익스프레션 언어 연산자 연습</TITLE></HEAD>
    <BODY>
        X = ${param.NUM1}, Y = ${param.NUM2} <BR><BR>    	  
        X + Y = ${param.NUM1 + param.NUM2} <BR>
        X - Y = ${param.NUM1 - param.NUM2} <BR>
        X * Y = ${param.NUM1 * param.NUM2} <BR>
        X / Y = ${param.NUM1 / param.NUM2} <BR>
        X % Y = ${param.NUM1 % param.NUM2} <BR><BR>
        X가 더 큽니까? ${param.NUM1 - param.NUM2 > 0} <BR>
        Y가 더 큽니까? ${param.NUM1 - param.NUM2 < 0} <BR><BR>
        X와 Y가 모두 양수입니까? ${(param.NUM1 > 0) && (param.NUM2 > 0)} <BR><BR>
        X와 Y가 같습니까? ${param.NUM1 == param.NUM2? "예" : "아니오"} <BR> <BR>
    </BODY>
</HTML>
