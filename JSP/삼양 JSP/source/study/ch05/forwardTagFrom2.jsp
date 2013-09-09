<%@ page contentType="text/html;charset=euc-kr"%>
<h2>포워딩하는 페이지: forwardTagFrom2.jsp</h2>
<%
   request.setCharacterEncoding("euc-kr");
   String name = request.getParameter("name");
   String selectedColor = request.getParameter("color");
   String selectedPage = selectedColor + ".jsp";
%>
<jsp:forward page="<%=selectedPage%>">
    <jsp:param name="selectedColor" value="<%=selectedColor%>"/>
	<jsp:param name="name" value="<%=name%>"/>
</jsp:forward>