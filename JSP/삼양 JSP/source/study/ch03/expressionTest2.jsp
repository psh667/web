<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.util.Date"%>

<h2>ǥ���� ����2 - �⺻������Ÿ�� �� ���۷���Ÿ�����</h2>

<%
    Date date = new Date();
    int var1 = 10;
	int var2 = var1 > 8 ? 20 : 10; //���� �����ڸ� ����ؼ� var2������ ���� ���� 	
%>

���� ��¥�� �ð�: <%=date.toString()%><p>
���� var1�� ��: <%=var1%><p>
���� var2�� ��: <%=var2%><p>
���� var1 + ����var2�� ��: <%=var1+var2%><p>

<%--WrapperŬ����: �⺻������Ÿ���� ��ü�� ��ȯ�ؾ��� ��� ���--%>
���� var1�� ��(WrapperŬ���� ���): <%=(new Integer(var1)).toString()%><p>