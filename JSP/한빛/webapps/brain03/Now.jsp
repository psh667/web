<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.*"%>
<% GregorianCalendar now = new GregorianCalendar(); %>
[������ �ð�] <%= String.format("%TF %TT ", now, now) %>