<%@ page contentType="text/html;charset=euc-kr"%>

<%
	String protocol = request.getProtocol();
	String server = request.getServerName();
	int port = request.getServerPort();
	String clientIp = request.getRemoteAddr();
	String clientHost = request.getRemoteHost();
	String methodType = request.getMethod();
	String url = new String(request.getRequestURL());
	String uri = request.getRequestURI();
	String contextPath = request.getContextPath();
	String browser = request.getHeader("User-Agent");
	String mediaType = request.getHeader("Accept");
%>

<h2>Request���� ��ü ����2</h2>
�������ݸ�: <%=protocol%><p>
������ ������ : <%=server%><p>
������ ������ ��Ʈ ��ȣ :<%=port%><p>
Ŭ���̾�Ʈ�� IP : <%=clientIp%><p>
Ŭ���̾�Ʈ�� ȣ��Ʈ�� : <%=clientHost%><p>
���� �������� method��� : <%=methodType%><p>
��û�� ���� �������� ���(URL) : <%=url%><p>
��û�� ���� �������� ���(URI) : <%=uri%><p>
�����ø����̼ǿ����� ���ؽ�Ʈ ��� : <%=contextPath%><p>
����� �� ������ : <%=browser%><p>
�� �������� �����ϴ� ��ü(media)�� Ÿ�� : <%=mediaType%><p>