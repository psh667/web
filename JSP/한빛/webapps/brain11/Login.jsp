<%@page contentType="text/html; charset=euc-kr"%>
<%
    String id = request.getParameter("ID");
    String password = request.getParameter("PASSWORD");
    String message;
    if (id.equals("duke") && password.equals("1234")) {
        session.setAttribute("ID", id);
        message = "�α��εǾ����ϴ�.";
    }
    else {
        message = "��ϵ��� ���� ���̵� �Ǵ� �н������Դϴ�.";
    }
%>
<HTML>
    <HEAD><TITLE>�α��� ���</TITLE></HEAD>
    <BODY>
         <%= message %>
    </BODY>
</HTML> 
