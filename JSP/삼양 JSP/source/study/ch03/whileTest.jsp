<%@ page contentType="text/html;charset=euc-kr"%>
<% request.setCharacterEncoding("euc-kr");%>
<h2>While�� ���� - ������ ���� ������ Ƚ���� ���ϱ�</h2>
<%
 	int number = Integer.parseInt(request.getParameter("number"));
 	int num = Integer.parseInt(request.getParameter("num"));
 	long multiply = 1;
	int count = 0;

 	while(count<num){
       multiply *= number;
       count++;
  }
%>
���: <%=multiply%>
