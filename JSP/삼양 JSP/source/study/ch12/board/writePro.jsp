<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "ch12.board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("euc-kr");%>
<%-- BoardDataBeanŬ������ ��ü article�� ����: ���� �� ��ü�� ���ٽ� article.--%>
<jsp:useBean id="article" scope="page" class="ch12.board.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
 
<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()) );
	article.setIp(request.getRemoteAddr());

    BoardDBBean dbPro = BoardDBBean.getInstance();
    dbPro.insertArticle(article);//���ڵ带 �߰��ϴ� �޼ҵ� ȣ��
    //list.jsp�������� �����̷�Ʈ
    response.sendRedirect("list.jsp");
%>






