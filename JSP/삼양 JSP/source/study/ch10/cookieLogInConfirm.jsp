<%@ page contentType="text/html; charset=euc-kr" %>
<%@include file="color.jsp" %>

<% 
	String id = "";
	try{
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
	   for(int i=0; i<cookies.length; i++){
          if(cookies[i].getName().equals("memId")){
			id = cookies[i].getValue();
		  }
	   }
	   if(id.equals("")){
         response.sendRedirect("cookieMemberLogIn.jsp");
	   }	
	}else{
		response.sendRedirect("cookieMemberLogIn.jsp");
	}
  }catch(Exception e){}
%>
<html>
<head>
<title>��Ű�� ����� ������ ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>" >
  <form method="post" action="cookieLogOut.jsp">
    <table width="300" border="1" align="center" cellspacing="0" cellpadding="0">
      <tr> 
         <td align="center" bgcolor="<%=value_c%>"> 
           <b><%= id %></b>���� �α��� �ϼ̽��ϴ�. 
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