<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD>
        <TITLE>�Ѻ��̵��</TITLE>
    </HEAD>
    <BODY>
        <H1>�Ѻ��̵��</H1> 
        <TABLE border=1 cellpadding=10>
            <TR>
                <TD width=190 valign=top>
                    <c:choose> 
                        <c:when test="${sessionScope.LOGIN_ID == null}">
                            <jsp:include page="LoginWindow.html" />
                        </c:when>
                        <c:otherwise>
                            <jsp:include page="LogoutWindow.jsp" />
                        </c:otherwise>
                    </c:choose> 
                    <A HREF="WebTemplate.jsp?BODY_PATH=Intro.html">ȸ�� �Ұ�</A><BR>
                    <A HREF="books-info">å ����</A><BR>
                    <A HREF="WebTemplate.jsp?BODY_PATH=BBSInput.html">�Խ��� �۾���</A><BR>
                    <A HREF="bbs-list">�Խ��� ���б�</A><BR>
                    <A HREF="cart-list">��ٱ���</A><BR>
                </TD>
                <TD valign=top width=650>
                    <jsp:include page="${param.BODY_PATH}" />
                </TD>
            </TR>
        </TABLE>
        <H5>Copyright@ 1993-2010 �Ѻ��̵��(��)</H5>
    </BODY>
</HTML>
