<!--date.jsp-->
<!--jsp����-->
<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.*, java.text.*" %>
<html>
  <body>
   <% 
      Date date = new Date();
      SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
      String strdate = simpleDate.format(date);
   %>
   ������ JSP �������� �����Դϴ�.<br>
   ���� ��¥�� <%= strdate%> �Դϴ�.
  </body>
</html>

