<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>JSTL core ���� - forEach</title>
</head>
<body>
<h3>Header ����:</h3>

<c:forEach var="head" items="${headerValues}">
  param: <c:out value="${head.key}"/><br>
  values:
   <c:forEach var="val" items="${head.value}">
     <c:out value="${val}"/>
   </c:forEach>
   <p>
</c:forEach>

</body>
</html>
