<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>웹 애플리케이션의 초기화 파라미터</TITLE></HEAD>
    <BODY>
         데이터베이스 이름: <%= application.getInitParameter("DB_NAME") %> <BR>
    </BODY>
</HTML>
