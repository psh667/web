<%@ page contentType="text/html; charset=euc-kr" %>
<%@include file="color.jsp" %>

<% 
	try{
	  if(session.getAttribute("memId")==null){
         response.sendRedirect("sessionMemberLogIn.jsp");}	
	}catch(Exception e){}%>
<html>
<head>
<title>������ ����� ������ ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>" >
  <form method="post" action="sessionLogOut.jsp">
    <table width="300" border="1" align="center" cellspacing="0" cellpadding="0">
      <tr> 
         <td align="center" bgcolor="<%=value_c%>"> 
           <b><%= session.getAttribute("memId") %></b>���� �α��� �ϼ̽��ϴ�. 
         </td>
	  </tr>
	  <tr>
		 <td align="center" bgcolor="<%=value_c%>">
		   <input type="submit" value="�α׾ƿ�">
		 </td>
      </tr>
    </table>
  </form>
</body>
</html>