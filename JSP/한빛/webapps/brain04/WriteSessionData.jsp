<%@page contentType="text/html; charset=euc-kr"%>
<% 
    session.setAttribute("NAME", "������"); 
    session.setAttribute("AGE", new Integer(21)); 
    session.setAttribute("GENDER", "��"); 
%>
<HTML>
    <HEAD><TITLE>���� �����͸� �����ϴ� JSP ������</TITLE></HEAD>
    <BODY>
        ���� �����Ͱ� ����Ǿ����ϴ�. <BR><BR>
        <A href=<%= response.encodeURL("ReadSessionData.jsp") %>>���� ������ �б�</A>
    </BODY>
</HTML>
