<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean class="mall.ClothingInfo" id="pinfo" scope="request"/> 
<jsp:setProperty name="pinfo" property="code" value="70002" /> 
<jsp:setProperty name="pinfo" property="name" value="���� Ƽ����" /> 
<jsp:setProperty name="pinfo" property="price" value="15000" /> 
<jsp:setProperty name="pinfo" property="size" value="M" /> 
<jsp:setProperty name="pinfo" property="color" value="������" /> 
<HTML>
    <HEAD><TITLE>�Ƿ� ���� ����</TITLE></HEAD>
    <BODY>
        �Ƿ� ������ ����Ǿ����ϴ�. <BR>
        --------------------------<BR>
        <H3>��ǰ ���� ����</H3>
        <jsp:include page="ProductInfo.jsp" />
    </BODY>
</HTML>
