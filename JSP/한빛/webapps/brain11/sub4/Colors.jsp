<%@page contentType="text/html; charset=euc-kr"%>
<% String color[] = request.getParameterValues("COLOR"); %>
<HTML>
    <HEAD><TITLE>색 고르기</TITLE></HEAD>
    <BODY>
        <H4>선택하신 색은 다음과 같습니다.</H4>
        <%
            if (color != null) {
                for (int cnt = 0; cnt < color.length; cnt++)
                    out.println(color[cnt] + "<BR>");
            }
        %>
    </BODY>
</HTML> 
