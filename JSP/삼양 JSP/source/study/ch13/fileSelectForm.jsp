<%@page contentType="text/html; charset=euc-kr" %>
<%@ include file="/view/color.jsp"%>
<%! 
	public String getParam(HttpServletRequest request, String paramName){
		if(request.getParameter(paramName)!=null){
			return request.getParameter(paramName);
		}else{
			return "";
		}
	}
%>
<%
	request.setCharacterEncoding("euc-kr");
	int filecounter = 0;
	if(request.getParameter("addcnt")!=null){
		filecounter = Integer.parseInt(request.getParameter("addcnt"));
	}
%>
<html>
<head>
<title>�������� ������ ���ε��ϴ� ����</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
function inputValue(form1, param, form2, idx){
	var paramValue = form1.elements[idx].value;
	form2.elements[idx].value = paramValue;			 
	return;
}
function addFile(formName){
	if(formName.addcnt.value==""){
		alert(" �Է��� ���� ������ �Է��ϰ� Ȯ�� ���߸� �����ּ���" ); 
		formName.addcnt.focus();						 
		return;
	}
	formName.submit();
}

function elementCheck(formName){
   paramIndex = 1; 
   for(idx=0; idx<formName.elements.length; idx++){
      if(formName.elements[idx].type == "file"){
         if(formName.elements[idx].value==""){
	        var message = paramIndex+" ��° ���������� �����ϴ�.\n���ε��� ������ ������ �ּ���";
		    alert(message);
			formName.elements[idx].focus();
			return;		
	     }
	     paramIndex++; 
      }
   }
   formName.action = "fileSelectPro.jsp";
   formName.submit();
}
</script>
</head>
<body  bgcolor="<%=bodyback_c%>">
<div align="center">
<h2>�������� ������ ���ε��ϴ� ����</h2>
<font color="#0000ff" size="2">���� ������ �Է��� �� [Ȯ��] ���߸� �����ּ���.<br>
�Է��� �Ϸ�Ǹ� ���Ͼ��ε带 ���� [���ε�] ���߸� �����ּ���.</font></div><br>
<form name="frmName1" method="post">
<table width="50%" border="1" align="center" cellpadding="1" cellspacing="1">
<tr>
    <td width="15%" bgcolor="<%=value_c%>" align="center">�ۼ���</td>
    <td><input type="text" name="user" onkeyup="inputValue(this.form,user,frmName2,0)" value="<%=getParam(request, "user")%>"></td></tr>
<tr><td width="15%" bgcolor="<%=value_c%>" align="center">����</td>
    <td><input type="text" name="title" onkeyup="inputValue(this.form,title,frmName2,1)" value="<%=getParam(request, "title")%>"></td>
</tr>
<tr>
	<td width="15%" bgcolor="<%=value_c%>" align="center">����</td>
	<td width="50%" colspan="3">
	<textarea name="abstract" cols="40" onkeyup="inputValue(this.form,abstract, frmName2,2)"><%=getParam(request,"abstract")%></textarea>
	</td>
</tr>
<tr>
	<td colspan="4" bgcolor="<%=value_c%>" align="center">
	���ε��� ���� �� �Է�
	<input type="Text" name="addcnt">
	<input type="button" value=" Ȯ�� " onclick="addFile(this.form)">
	
	</td>
</tr>
</table>
</form>

<form name="frmName2" method="post" enctype="multipart/form-data">
<table width="50%" border="1" align="center" cellpadding="1" cellspacing="1" >
<tr>
	<td width="40%" bgcolor="<%=value_c%>" align="center">
	<input type="hidden" name="txtUser" value="<%=getParam(request, "user")%>">
	<input type="hidden" name="txtTitle" value="<%=getParam(request, "title")%>">
	<input type="hidden" name="txtAbstract" value="<%=getParam(request,"abstract")%>">
	<%	for(int i=0; i<filecounter; i++){%>
	<input type="File" size="50" name="selectFile<%=i%>"><br>	 	
	<%	}%>
	
	
	<input type="Button" value="���ε�" onclick="elementCheck(this.form)"></td>
</tr>
</table>
</form>
</body>
</html>
