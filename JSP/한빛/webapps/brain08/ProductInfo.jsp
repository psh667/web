<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean class="mall.ProductInfo" id="pinfo" scope="request" />
�ڵ�: <jsp:getProperty name="pinfo" property="code" /> <BR>
��ǰ��:<jsp:getProperty name="pinfo" property="name" /> <BR>
����: <jsp:getProperty name="pinfo" property="price" /> <BR>
