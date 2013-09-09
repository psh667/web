<%@page contentType="text/html; charset=euc-kr" %>
<%
    String str = request.getParameter("NUM");
    int num = Integer.parseInt(str);
%>
<HTML>
    <HEAD><TITLE>¼Ò¼ö</TITLE></HEAD>
    <BODY>
        <%
            int arr[] = { 2, 3, 5, 7, 11, 13, 17, 19, 23, 29 };
            for (int cnt = 0; cnt < num; cnt++)
                out.println(arr[cnt]);
        %>
    </BODY>
</HTML>
