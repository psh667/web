<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<H4>�α׾ƿ�</H4>
<c:choose> 
    <c:when test="${param.LOGOUT_RESULT == 'SUCCESS'}">
        �α׾ƿ��� �Ǿ����ϴ�. <BR>
    </c:when>
    <c:otherwise>
        �α׾ƿ��� �����߽��ϴ�. <BR>
    </c:otherwise>
</c:choose> 
