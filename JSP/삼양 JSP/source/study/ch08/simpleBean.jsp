<%@ page contentType="text/html; charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="simpleBean" class="ch08.simpleBean.SimpleBean" />
<jsp:setProperty name="simpleBean" property="msg" />

<html>
<body>

<h1>������ �ڹٺ� ���α׷���</h1>
<br>
�޽���: <jsp:getProperty name="simpleBean" property="msg" />
</body>
</html>