<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>�ִ밪 ���ϱ�</TITLE></HEAD>
    <BODY>
        �ִ밪: 
        <c:if test="${param.NUM1 - param.NUM2 >= 0}">
            ${param.NUM1}
        </c:if>
        <c:if test="${param.NUM1 - param.NUM2 < 0}">
            ${param.NUM2}
        </c:if>
    </BODY>
</HTML> 
