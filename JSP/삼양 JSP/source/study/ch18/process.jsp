<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>��û �Ķ���ͷ� ��ɾ �����ϴ� ����</title>
</head>
<body>
ó�� ���:
<c:set var="message" value="${requestScope.message}" />
<c:out value="${message}"/>
</body>
</html>
