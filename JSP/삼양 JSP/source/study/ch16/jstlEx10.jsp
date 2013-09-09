<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<html>
<head><title>JSTL sql ���� - query</title></head>
<body>


<sql:query var="rs"  dataSource="jdbc/jsptest">
    select * from member 
</sql:query>

<table border="1">
  <tr><%--�ʵ��  ���--%>
    <c:forEach var="columnName" items="${rs.columnNames}">
      <th><c:out value="${columnName}"/></th>
    </c:forEach>
  </tr>
  <c:forEach var="row" items="${rs.rowsByIndex}"><%-- ���ڵ��� �� ��ŭ �ݺ��Ѵ�. --%>
  <tr>
    <c:forEach var="column" items="${row}" varStatus="i"><%-- ���ڵ��� �ʵ�� ��ŭ �ݺ��Ѵ�. --%>
   <td>
       <c:if test="${column!=null}"> <%--�ش� �ʵ尪�� null�� �ƴϸ�--%>
		    <c:out value="${column}"/>
	   </c:if> <%--�ش� �ʵ尪�� null�̸�--%>
	   <c:if test="${column==null}">
		    &nbsp;
	   </c:if>
    </td>
    </c:forEach>
  </tr>
   </c:forEach>
</table>

</body>
</html>