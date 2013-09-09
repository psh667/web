<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>JSTL core ���� - if, choose, when, otherwise</title>
</head>
<body>
<c:set var="country" value="${'Korea'}"/>
<c:if test="${country != null}">
  ������: <c:out value="${country}"/>
</c:if>
<p>

<c:choose>
  <c:when test="${country == 'Korea'}">
     <c:out value="${country}"/>�� �ܿ��� ���.
  </c:when>
  <c:when test="${country == 'Canada'}">
     <c:out value="${country}"/>�� �ܿ��� �ʹ� ���.
  </c:when>
  <c:otherwise>
     �׿��� ������� �ܿ��� �� �� ����.
  </c:otherwise>
</c:choose>
</body>
</html>
