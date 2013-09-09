<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.util.*"%>
<%
   Date date = new Date();//현재의 날짜와 시간을 얻어냄
%>
<html>
 <body>
top.jsp입니다.<p>
<%=date.toLocaleString()%>
<hr>