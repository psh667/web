<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>������ ��Ʈ�ѷ�(Controller)�� ��� ����</title>
</head>
<body>
���:
<c:set var="result" value="${requestScope.result}" />
<c:out value="${result}"/>
</body>
</html>
