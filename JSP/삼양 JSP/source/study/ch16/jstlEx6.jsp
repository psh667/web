<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"  %>

<fmt:requestEncoding value="euc-kr"/>

<html>
<head><title>JSTL fmt ���� - requestEncoding</title></head>
<body>
 �Ķ����:<c:out value="${param.id}"/>
<form method="post" action="jstlEx6.jsp">
<input type="text" name="id">
<input type="submit" value="Ȯ��">
</form>
</body>
</html>