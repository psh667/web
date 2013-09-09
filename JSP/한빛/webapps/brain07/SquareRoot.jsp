<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="m" uri="http://hanb.co.kr/brain07/math-functions.tld"%>
<HTML>
    <HEAD><TITLE>제곱근 구하기</TITLE></HEAD>
    <BODY>
        ${param.NUM}의 제곱근은? ${m:squareroot(param.NUM)} <BR>
    </BODY>
</HTML>
