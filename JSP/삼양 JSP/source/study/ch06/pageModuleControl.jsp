<%@ page contentType="text/html;charset=euc-kr"%>
<h2>������ �帧����: pageModuleControl.jsp</h2>
<%
   request.setCharacterEncoding("euc-kr");

   String product= request.getParameter("product");
   String CONTROL=null;
   String CONTENTPAGE=null;
   String PAGETITLE=null;
   if(product.equals("a")){
     CONTROL="dc";
     CONTENTPAGE="dc.jsp";
	 PAGETITLE="������ ī�޶�";
   }else{
	 CONTROL="pmp";
     CONTENTPAGE="pmp.jsp";
	 PAGETITLE="PMP";
   }
%>
 <jsp:forward page="template.jsp">
   <jsp:param name="CONTROL" value="<%=CONTROL%>"/>
   <jsp:param name="CONTENTPAGE" value="<%=CONTENTPAGE%>"/>
   <jsp:param name="PAGETITLE" value="<%=PAGETITLE%>"/>
 </jsp:forward>
