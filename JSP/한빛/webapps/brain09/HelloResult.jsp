<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="euc-kr" />
<HTML>
    <HEAD><TITLE>인사하기</TITLE></HEAD>
    <BODY>
        안녕하세요, ${param.ID}님
    </BODY>
</HTML>
