<%@page contentType="text/html; charset=euc-kr"%>
<% Cookie[] cookies = request.getCookies(); %>
<HTML>
    <HEAD><TITLE>��Ű ������ �б�</TITLE></HEAD>
    <BODY>
        JOB: <%= getCookieValue(cookies, "JOB") %> <BR>
    </BODY>
</HTML>
<%!
    private String getCookieValue(Cookie[] cookies, String name) {
        String value = null;
        if (cookies == null)
            return null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(name))
                return cookie.getValue();
        }
        return null;
    }
%>
