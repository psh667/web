<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean id="bbsItem" class="web.BBSItem" />
<jsp:setProperty name="bbsItem" property="seqNo" value="${param.SEQ_NO}" />
<% bbsItem.readDB(); %>
<H4>�Խñ� �б�</H4>
[����] ${bbsItem.title} <BR>
[�ۼ���] ${bbsItem.writer} 
[�ۼ��Ͻ�] ${bbsItem.date} ${bbsItem.time} <BR>
------------------------------------------------------------ <BR>
${bbsItem.content}
