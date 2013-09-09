<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>HTML 문법 설명</TITLE></HEAD>
    <BODY>
        <H3>FONT 태그에 대하여</H3>
        <c:out value="<FONT size=7>커다란 글씨</FONT>는 다음과 같은 출력을 합니다." /> <BR><BR>
        <c:out value="<FONT size=7>커다란 글씨</FONT>" escapeXml="false" />
    </BODY>
</HTML>

