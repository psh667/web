<%@ page contentType="text/html;charset=euc-kr"%>
<%
	String info = application.getServerInfo();
	int major = application.getMajorVersion();
	int minor = application.getMinorVersion();
    String path = application.getRealPath("/");
	application.log("�α� ���");
%>

<h2>Application���尴ü ����</h2>
�� �����̳��� �̸��� ���� : <%=info%><p>
������ ���� : <%=major%>.<%=minor%><p>
�� ���ø����̼� ������ ���� �ý��� ��� : <%=path%>