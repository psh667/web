<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<% GregorianCalendar now = new GregorianCalendar(); %>
<%= String.format("%TY�� %Tm�� %Td��", now, now, now) %>
