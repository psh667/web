<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>application ���� ������ ��� ��</TITLE></HEAD>
    <BODY>
        <% 
            String appPath = application.getContextPath();
            String filePath = application.getRealPath("/sub1/Intro.html");
        %>
        �� ���ø����̼��� URL ��θ�: <%= appPath %> <BR>
        /sub1/Intro.html�� ���� ��θ�: <%= filePath %> <BR>
    </BODY>
</HTML>
