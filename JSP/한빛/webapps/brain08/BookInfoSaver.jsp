<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean class="mall.BookInfo" id="pinfo" scope="request"/> 
<jsp:setProperty name="pinfo" property="code" value="50001" /> 
<jsp:setProperty name="pinfo" property="name" value="�Ƿ���" /> 
<jsp:setProperty name="pinfo" property="price" value="9000" /> 
<jsp:setProperty name="pinfo" property="writer" value="�� �׸���" /> 
<jsp:setProperty name="pinfo" property="page" value="704" /> 
<HTML>
    <HEAD><TITLE>å ���� ����</TITLE></HEAD>
    <BODY>
        å ������ ����Ǿ����ϴ�. <BR>
        --------------------------<BR>
        <H3>��ǰ ���� ����</H3>
        <jsp:include page="ProductInfo.jsp" />
    </BODY>
</HTML>
