<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head>
	<title>�� �������� ����� ��Ű�� �������� ����</title>
</head>
<body>
<h2>�� �������� ����� ��Ű�� �������� ����</h2>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0; i<cookies.length;++i){
			if(cookies[i].getName().equals("id")){
%>
				��Ű�� �̸��� "<%=cookies[i].getName()%>" �̰� 
				��Ű�� �� "<%=cookies[i].getValue()%>" �Դϴ�.
<%
			}
		}
	}
%>
</body>
</html>
