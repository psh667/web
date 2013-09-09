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
    <HEAD><TITLE>데이터베이스 커넥션 풀 생성하기</TITLE></HEAD>
    <BODY>
        <H3>데이터베이스 커넥션 풀 생성하기</H3>
        데이터베이스 커넥션 풀을 생성하고 등록했습니다. <BR><BR>
        풀 이름: /webdb_pool
    </BODY>
</HTML>
