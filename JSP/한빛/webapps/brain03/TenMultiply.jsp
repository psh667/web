<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>1���� 10������ ��</TITLE></HEAD>
    <!-- �̰��� JSP�� ���� ������ HTML �����Դϴ�. -->
    <BODY>
        <%-- ������ �����͸� ó���ϴ� ��ũ��Ʋ���Դϴ�. --%>
        <% int result = 1;    // ���� ������ ����
           /* 1���� 10���� ���ϴ� �ݺ��� */
           for (int cnt = 1; cnt <= 10; cnt++)
               result *= cnt;
        %>
        1���� 10���� ���� ����? <%= result %> 
    </BODY>
</HTML>
