<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="org.apache.commons.dbcp.*"%>
<HTML>
    <HEAD><TITLE>�����ͺ��̽� Ŀ�ؼ� Ǯ ���</TITLE></HEAD>
    <BODY>
    <H3>�����ͺ��̽� Ŀ�ؼ� Ǯ ���</H3>
    <%
        PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
        String[] names = driver.getPoolNames();
        for (int cnt = 0; cnt < names.length; cnt++)
            out.println(names[cnt] + "<BR>");
    %>        
    </BODY>
</HTML>

