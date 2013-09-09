<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD><TITLE>�Խ���</TITLE></HEAD>
    <BODY>
        <H4>�Խ��� ��� ����</H4>
        <TABLE border=1>
            <TR>
                <TD width=40>����</TD>
                <TD width=300>����</TD>
                <TD width=80>�ۼ���</TD>
                <TD width=90>�ۼ�����</TD>
                <TD width=70>�ۼ��ð�</TD>
            </TR>
            <c:forEach var="cnt" begin="0" end="${BBS_LIST.listSize - 1}"> 
                <TR>
                    <TD>${BBS_LIST.seqNo[cnt]}</TD>
                    <TD>${BBS_LIST.title[cnt]}</TD>
                    <TD>${BBS_LIST.writer[cnt]}</TD>
                    <TD>${BBS_LIST.date[cnt]}</TD>
                    <TD>${BBS_LIST.time[cnt]}</TD>
                </TR>
            </c:forEach> 
        </TABLE>
        <c:if test="${!BBS_LIST.lastPage}"> 
            <A href='bbs-list?LAST_SEQ_NO=${BBS_LIST.seqNo[
                          BBS_LIST.listSize - 1]}'>���� ������</A>
        </c:if> 
    </BODY>
</HTML>
