<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="web.BBSItem"%>
<%
    int seqNo = Integer.parseInt(request.getParameter("SEQ_NO"));
    BBSItem bbsItem = new BBSItem();
    bbsItem.setSeqNo(seqNo);
    bbsItem.readDB();
%>
<HTML>
    <HEAD><TITLE>�Խñ� �б�</TITLE></HEAD>
    <BODY>
        <H4>�Խñ� �б�</H4>
        [����] <%= bbsItem.getTitle() %> <BR>
        [�ۼ���] <%= bbsItem.getWriter() %>
        [�ۼ��Ͻ�] <%= bbsItem.getDate() %> <%= bbsItem.getTime() %> <BR>
        ------------------------------------------------------------ <BR>
        <%= bbsItem.getContent() %>
    </BODY>
</HTML>
