<%@page contentType="text/html; charset=euc-kr"%>
<% String color[] = request.getParameterValues("COLOR"); %>
<HTML>
    <HEAD><TITLE>�� ����</TITLE></HEAD>
    <BODY>
        <H4>�����Ͻ� ���� ������ �����ϴ�.</H4>
        <%
            if (color != null) {
                for (int cnt = 0; cnt < color.length; cnt++)
                    out.println(color[cnt] + "<BR>");
            }
        %>
    </BODY>
</HTML> 
