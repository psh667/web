<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean id="bbsItem" class="web.BBSItem" />
<jsp:setProperty name="bbsItem" property="seqNo" value="${param.SEQ_NO}" />
<% bbsItem.readDB(); %>
<HTML>
    <HEAD><TITLE>�Խñ� �б�</TITLE></HEAD>
    <BODY>
        <H4>�Խñ� �б�</H4>
        [����] ${bbsItem.title} <BR>
        [�ۼ���] ${bbsItem.writer} 
        [�ۼ��Ͻ�] ${bbsItem.date} ${BBS_ITEM.time} <BR>
        ------------------------------------------------------------ <BR>
        ${bbsItem.content}
    </BODY>
</HTML>
