<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean class="mall.BookInfo" id="pinfo" scope="request"/> 
<jsp:setProperty name="pinfo" property="code" value="50001" /> 
<jsp:setProperty name="pinfo" property="name" value="의뢰인" /> 
<jsp:setProperty name="pinfo" property="price" value="9000" /> 
<jsp:setProperty name="pinfo" property="writer" value="존 그리샴" /> 
<jsp:setProperty name="pinfo" property="page" value="704" /> 
<HTML>
    <HEAD><TITLE>책 정보 관리</TITLE></HEAD>
    <BODY>
        책 정보가 저장되었습니다. <BR>
        --------------------------<BR>
        <H3>제품 개략 정보</H3>
        <jsp:include page="ProductInfo.jsp" />
    </BODY>
</HTML>
