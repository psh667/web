<!-- Copyright (c) 2002 by ObjectLearn. All Rights Reserved. -->
<%@ page language="java" pageEncoding="EUC-KR" %>
<html>
	<head>
		<title>���ø� �������� ����� �������� </title>
	</head>
	<body>
		<center>Welcome</center>
	</body>
</html>

<jsp:forward page="/view/indexControl.jsp">
  <jsp:param name="CONTROL" value="intro"/>
  <jsp:param name="PAGENUM" value="01"/>
</jsp:forward>