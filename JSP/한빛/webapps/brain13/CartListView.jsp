<%@page contentType="text/html; charset=euc-kr"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<H4>��ٱ��� ����</H4>
<c:choose> 
    <c:when test="${CART_LIST == null || CART_LIST.size <= 0}">
        ��ٱ��ϰ� ��� �ֽ��ϴ�.
    </c:when>
    <c:otherwise>
        <TABLE border=1>
            <TR>
                <TD width=70>��ǰ�ڵ�</TD>
                <TD width=250>����</TD>
                <TD width=80>�ܰ�</TD>
                <TD width=50>����</TD>
                <TD width=100>�ݾ�</TD>
            </TR>
            <c:forEach var="cnt" begin="0" end="${CART_LIST.size - 1}"> 
                <TR>
                    <TD>${CART_LIST.code[cnt]}</TD>
                    <TD>${CART_LIST.title[cnt]}</TD>
                    <TD>${CART_LIST.price[cnt]}��</TD>
                    <TD>${CART_LIST.number[cnt]}</TD>
                    <TD>${CART_LIST.price[cnt] * CART_LIST.number[cnt]}��</TD>
                </TR>
           </c:forEach> 
        </TABLE>
        <FORM ACTION=/brain13/pay METHOD=POST>
            �Ѱ�: ${CART_LIST.totalAmount}��  
            <INPUT TYPE=HIDDEN NAME=TOTAL_AMOUNT VALUE=${CART_LIST.totalAmount}>
            <INPUT TYPE=SUBMIT VALUE='ī�����'>
        </FORM> 
    </c:otherwise>
</c:choose> 
