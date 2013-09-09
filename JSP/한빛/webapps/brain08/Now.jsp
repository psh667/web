<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<% 
    GregorianCalendar now = new GregorianCalendar();
    String date = String.format("%TY년 %Tm월 %Td일", now, now, now); 
    String time = String.format("%Tp %TR", now, now); 
%>
[현재 시각] <%= date %> <%= time %>
