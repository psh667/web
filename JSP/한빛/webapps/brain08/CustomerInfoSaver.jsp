<%@page contentType="text/html; charset=euc-kr"%>
<jsp:useBean class="mall.PersonalInfo" id="pinfo" scope="request" /> 
<jsp:setProperty name="pinfo" property="name" value="������" /> 
<jsp:setProperty name="pinfo" property="gender" value="��" /> 
<jsp:setProperty name="pinfo" property="age" value="23" /> 
<jsp:forward page="CustomerInfoViewer.jsp" />
