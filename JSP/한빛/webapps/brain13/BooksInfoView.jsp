<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<H4>å ����</H4>
<TABLE border=1>
   <TR>
        <TD width=70>��ǰ�ڵ�</TD>
        <TD width=250>����</TD>
        <TD width=80>����</TD>
        <TD width=80>����</TD>
        <TD width=120>&nbsp;</TD>
    </TR>
    <c:forEach var="cnt" begin="0" end="${BOOKS_INFO.size - 1}"> 
        <TR>
            <TD>${BOOKS_INFO.code[cnt]}</TD>
            <TD>${BOOKS_INFO.title[cnt]}</TD>
            <TD>${BOOKS_INFO.writer[cnt]}</TD>
            <TD>${BOOKS_INFO.price[cnt]}��</TD>
            <TD><A href='#' onClick='window.open(
                "add-item-to-cart?CODE=${BOOKS_INFO.code[cnt]}", 
                "cart_result", "width=400,height=150").focus()'>
                    ��ٱ��� ���</A></TD>
        </TR>
   </c:forEach> 
</TABLE>
<c:if test="${!BOOKS_INFO.lastPage}"> 
    <A href='books-info?LAST_CODE=${
        BOOKS_INFO.code[BOOKS_INFO.size - 1]}'>���� ������</A>
</c:if> 
