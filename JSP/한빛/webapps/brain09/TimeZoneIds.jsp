<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.TimeZone"%>
<HTML>
    <HEAD><TITLE>시간대 ID 목록</TITLE></HEAD>
    <BODY>
        <%
            String arr[] = TimeZone.getAvailableIDs();
            for (int cnt =0; cnt < arr.length; cnt++)
                out.println(arr[cnt] + "<BR>");
        %>
    </BODY>
</HTML> 
