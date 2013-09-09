<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="m" uri="http://hanb.co.kr/brain07/math-functions.tld"%>
<HTML>
    <HEAD><TITLE>주어진 범위의 합 구하기</TITLE></HEAD>
    <BODY>
        ${param.NUM1}부터 ${param.NUM2}까지의 합은? <BR><BR>
        답: ${m:total(param.NUM1, param.NUM2)} 
    </BODY>
</HTML>
