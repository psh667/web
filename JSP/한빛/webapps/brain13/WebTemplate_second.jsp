<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
    <HEAD>
        <TITLE>한빛미디어</TITLE>
    </HEAD>
    <BODY>
        <H1>한빛미디어</H1>
        <TABLE border=1 cellpadding=10>
            <TR>
                <TD width=150 valign=top>
                    <c:choose> 
                        <c:when test="${sessionScope.LOGIN_ID == null}">
                            <A HREF="WebTemplate.jsp?BODY_PATH=LoginForm.html">로그인</A><BR>
                        </c:when>
                        <c:otherwise>
                            <A HREF="logout">로그아웃</A><BR>
                        </c:otherwise>
                    </c:choose> 
                    <A HREF="WebTemplate.jsp?BODY_PATH=Intro.html">회사 소개</A><BR>
                    <A HREF="books-info">책 정보</A><BR>
                    <A HREF="WebTemplate.jsp?BODY_PATH=BBSInput.html">게시판 글쓰기</A><BR>
                    <A HREF="bbs-list">게시판 글읽기</A><BR>
                </TD>
                <TD valign=top width=650>
                    <jsp:include page="${param.BODY_PATH}" />
                </TD>
            </TR>
        </TABLE>
        <H5>Copyright@ 1993-2010 한빛미디어(주)</H5>
    </BODY>
</HTML>
