<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="org.apache.commons.dbcp.*"%>
<%@page import="org.apache.commons.pool.impl.*"%>
<%
    GenericObjectPool objectPool = new GenericObjectPool();
    DriverManagerConnectionFactory connectionFactory 
                    = new DriverManagerConnectionFactory("jdbc:mysql://localhost:3306/webdb", "root", "1234");
    new PoolableConnectionFactory(connectionFactory, objectPool, null, null, false, true);
    PoolingDriver driver = new PoolingDriver();
    driver.registerPool("/webdb_pool", objectPool);
%>        
<HTML>
    <HEAD><TITLE>�����ͺ��̽� Ŀ�ؼ� Ǯ �����ϱ�</TITLE></HEAD>
    <BODY>
        <H3>�����ͺ��̽� Ŀ�ؼ� Ǯ �����ϱ�</H3>
        �����ͺ��̽� Ŀ�ؼ� Ǯ�� �����ϰ� ����߽��ϴ�. <BR><BR>
        Ǯ �̸�: /webdb_pool
    </BODY>
</HTML>
