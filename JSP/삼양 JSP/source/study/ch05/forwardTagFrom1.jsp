<%@ page contentType="text/html;charset=euc-kr"%>
<h2>�������ϴ� ������: forwardTagFrom1.jsp</h2>
<%
   request.setCharacterEncoding("euc-kr");
%>
<html>
 <body>
   forwardTagFrom1.jsp�� ���� �Դϴ�.<br>
  ȭ�鿡 ���� ǥ�� �ȵ˴ϴ�.
	<jsp:forward page="forwardTagTo1.jsp"/>  
 </body>
</html>