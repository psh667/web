<%@page contentType="text/html; charset=euc-kr"%>
<% String result = request.getParameter("RESULT"); %>
<HTML>
    <HEAD><TITLE>ȸ�� ����</TITLE></HEAD>
    <BODY>
        <H3>ȸ�� ���� ���</H3>
        <%
            if (result.equals("SUCCESS"))
                out.println("���ԵǾ����ϴ�.");
            else
                out.println("���Ե��� �ʾҽ��ϴ�.");
        %>
    </BODY>
</HTML>
