<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ page errorPage="error.jsp"%>
<html>
  <body>
   <% 
      Date date = new Date();
      SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
      String strdate = simpleDate.format(date);
   %>
   ������ JSP �������� �����Դϴ�.<br>
   ���� ��¥�� <%= strdat%> �Դϴ�.
  </body>
</html>

