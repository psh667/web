<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<H4>�α���</H4>
<c:choose> 
    <c:when test="${param.LOGIN_RESULT == 'SUCCESS'}">
        �α����� �Ǿ����ϴ�. <BR> �ȳ��ϼ��� ${sessionScope.LOGIN_ID}��.
    </c:when>
    <c:otherwise>
        �α��ο� �����߽��ϴ�. <BR> ���̵�� �н����带 üũ�Ͻʽÿ�.
    </c:otherwise>
</c:choose> 
