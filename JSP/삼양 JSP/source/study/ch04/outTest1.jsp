<%@ page contentType="text/html;charset=euc-kr"%>
<%
	int bufferSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int usedSize = bufferSize - remainSize;
%>
<h2>Out���尴ü ����</h2>
<b>���� ������������ ������ �����Ȳ</b><p>
��� ������ ��ü ũ�� : <%=bufferSize%>byte<p>
���� ����� ������ ũ�� : <%=usedSize%>byte<p>
���� ������ ũ�� : <% out.println(remainSize);%>byte<p>