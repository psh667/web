<%@ page  contentType="text/html; charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/view/color.jspf"%>
<html>
<head><title>�����Դϴ�..</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>


<body bgcolor="${bodyback_c}">

<c:if test="${empty sessionScope.memId}">

  <table width=500 cellpadding="0" cellspacing="0"  align="center" border="1" >
      <tr>
       <td width="300" bgcolor="${bodyback_c}" height="20">
       &nbsp;
       </td>
   
       <form name="inform" method="post" action="/study/appendix/logon/loginPro.do">

        <td bgcolor="${title_c}"  width="100" align="right">���̵�</td>
        <td width="100" bgcolor="${value_c}">
            <input type="text" name="id" size="15" maxlength="10"></td>
      </tr>
      <tr > 
         <td rowspan="2" bgcolor="${bodyback_c}" width="300" >�����Դϴ�.</td>
         <td bgcolor="${title_c}"  width="100" align="right">�н�����</td>
         <td width="100" bgcolor="${value_c}">
            <input type="password" name="passwd" size="15" maxlength="10"></td>
       </tr>
       <tr>
          <td colspan="3" bgcolor="${title_c}"   align="center">
            <input type="submit" name="Submit" value="�α���">
            <input type="button"  value="ȸ������" onclick="document.location.href='/study/appendix/logon/inputForm.do'">
          </td></form></tr></table>
     </c:if>
	 <c:if test="${!empty sessionScope.memId}">
       <table width=500 cellpadding="0" cellspacing="0"  align="center" border="1" >
         <tr>
           <td width="300" bgcolor="${bodyback_c}" height="20">������</td>

           <td rowspan="3" bgcolor="${value_c}" align="center">
             ${sessionScope.memId}���� <br>
             �湮�ϼ̽��ϴ�
             <form  method="post" action="/study/appendix/logon/logout.do">  
             <input type="submit"  value="�α׾ƿ�">
             <input type="button" value="ȸ����������" onclick="document.location.href='/study/appendix/logon/modify.do'">
             </form>
         </td>
        </tr>
       <tr > 
         <td rowspan="2" bgcolor="${bodyback_c}" width="300" >�����Դϴ�.</td>
      </tr>
     </table>
     <br>
</c:if>
 </body>
</html>
