<%@ page contentType="text/html; charset=euc-kr" %>
<%@include file="color.jsp" %>
<html>
<head>
<title>��Ű�� ����� ������ ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>" >
  <form method="post" action="cookieMemberLogInOK.jsp">
    <table width="300" border="1" align="center" cellspacing="0" cellpadding="0">
      <tr> 
         <td bgcolor="<%=title_c%>" colspan="2"><div align="center">�α���</div></td>
       </tr>
       <tr> 
          <td width="100" bgcolor="<%=title_c%>">���̵�</td>
          <td width="200" bgcolor="<%=value_c%>"><input type="text" name="id"></td>
       </tr>
       <tr> 
          <td width="100" bgcolor="<%=title_c%>">��й�ȣ</td>
          <td width="200" bgcolor="<%=value_c%>"><input type="password" name="passwd"></td>
       </tr>
       <tr> 
          <td colspan="2" align="center">
		    <input type="submit" value="�α���">
                &nbsp;&nbsp;&nbsp;
            <input type="reset" value="�ٽ��ۼ�">
          </td>
      </tr>
    </table>
  </form>
</body>
</html>