<%@ page contentType="text/html;charset=euc-kr"%>
<h2>For ���� - 1~10���� �� ���ϱ�</h2>

<%
    int sum = 0;
    String str="";

	for(int i=1;i<=10;i++){
       if(i<10){
          str += i + " + ";
	   }else{
	      str += i + " = ";
       }
       sum += i; 
    }     	
%>	    
<%=str%><%=sum%>