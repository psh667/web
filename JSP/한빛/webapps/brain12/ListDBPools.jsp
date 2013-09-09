<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="org.apache.commons.dbcp.*"%>
<HTML>
    <HEAD><TITLE>데이터베이스 커넥션 풀 목록</TITLE></HEAD>
    <BODY>
    <H3>데이터베이스 커넥션 풀 목록</H3>
    <%
        PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
        String[] names = driver.getPoolNames();
        for (int cnt = 0; cnt < names.length; cnt++)
            out.println(names[cnt] + "<BR>");
    %>        
    </BODY>
</HTML>

