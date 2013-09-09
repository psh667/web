<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>웹 서버의 정보</TITLE></HEAD>
    <BODY>
        웹 서버의 종류: <%= application.getServerInfo() %> <BR>
        지원하는 서블릿 버전: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> <BR>
    </BODY>
</HTML>    
