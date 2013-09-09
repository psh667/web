<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>회원 정보</TITLE></HEAD>
    <BODY>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" /> 
        <jsp:setProperty name="pinfo" property="*" /> 
        이름: <jsp:getProperty name="pinfo" property="name" /> <BR>
        성별: <jsp:getProperty name="pinfo" property="gender" /> <BR>
        나이: <jsp:getProperty name="pinfo" property="age" />
    </BODY>
</HTML>
