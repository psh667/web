<%@ page contentType="text/html; charset=euc-kr" %>
<%@include file="color.jsp" %>

<% 
  request.setCharacterEncoding("euc-kr");
%>

<jsp:useBean id="regBean" class="ch08.register.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />

<html>
<head>
<title>ȸ������ Ȯ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="<%=bodyback_c%>">
    <table width="500" border="0" cellspacing="0" cellpadding="2"  align="center">
      <tr height="39" align="center" bgcolor="<%=title_c%>"> 
        <td colspan="2"><b>ȸ�� ���� Ȯ��</b></td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">���̵�</td>
        <td width="400" bgcolor="<%=value_c%>">
		  <jsp:getProperty name="regBean" property="id" /></td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">��й�ȣ</td>
        <td width="400" bgcolor="<%=value_c%>"> 
		  <jsp:getProperty name="regBean" property="passwd" /> </td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">�̸�</td>
        <td width="400" bgcolor="<%=value_c%>"> 
		  <jsp:getProperty name="regBean" property="name" /> </td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">�̸���</td>
        <td width="400" bgcolor="<%=value_c%>"> 
		  <jsp:getProperty name="regBean" property="email" /> </td>
      </tr>
      <tr> 
        <td width="100" bgcolor="<%=title_c%>">��ȭ��ȣ</td>
        <td width="400" bgcolor="<%=value_c%>"> 
		  <jsp:getProperty name="regBean" property="tel" /> </td>
      </tr>
  </table>
</body>
</html>
