<%@ page contentType="text/html;charset=euc-kr"%>

<h2>ǥ���� ����1 - �迭�� ���� ���</h2>
<%!
	String str[] = {"JSP��","����","���","�ִ�"};//�迭�� �ʱ�ȭ ���� ����ϸ� �迭�� ����, �޸��Ҵ�,�ʱⰪ������ �ѹ��� �� �� �ִ�.
%>
<table border="1" width="250">
    <tr><td>�迭�� ÷��</td><td>�迭�� ����</td></tr>
<% for (int i=0;i<str.length;i++){ //�迭��.length�� �迭�� ����� ���� �����Ѵ�%>
    <tr><td><%=i%></td><td><%=str[i]%></td>
    </tr>
<%}%>
</table>