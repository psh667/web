<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean id="bbsItem" class="web.BBSItem" />
<jsp:setProperty name="bbsItem" property="seqNo" value="${param.SEQ_NO}" />
<% bbsItem.readDB(); %>
<HTML>
    <HEAD><TITLE>�Խñ� �б�</TITLE></HEAD>
    <BODY>
        <H4>�Խñ� �б�</H4>
        [����] <jsp:getProperty name="bbsItem" property="title" /> <BR>
        [�ۼ���] <jsp:getProperty name="bbsItem" property="writer" /> 
        [�ۼ��Ͻ�] <jsp:getProperty name="bbsItem" property="date" />
                   <jsp:getProperty name="bbsItem" property="time" /> <BR>
        ------------------------------------------------------------ <BR>
        <jsp:getProperty name="bbsItem" property="content" />
    </BODY>
</HTML>
