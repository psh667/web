<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>�λ��ϱ�</TITLE></HEAD>
    <BODY>
        <c:choose> 
            <c:when test="${param.NUM == 0}"> 
                ó�� �˰ڽ��ϴ�. <BR>
            </c:when> 
            <c:when test="${param.NUM == 1}"> 
                �ݰ����ϴ�. <BR>
            </c:when> 
            <c:otherwise> 
                �ȳ��ϼ���. <BR>
            </c:otherwise> 
        </c:choose> 
    </BODY>
</HTML> 
