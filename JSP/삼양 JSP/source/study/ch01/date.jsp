<!--date.jsp-->
<!--jsp����-->
<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<html>
  <body>
   <% 
      Date nowDate = new Date();//���糯¥�� �ð��� ����
      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy��MM��dd��");//��¥������ yyyy��MM��dd�����·� ����ϱ����ؼ� SimpleDateFormat��ü ����
      String formatDate = dateFormat.format(nowDate);//������ ��¥�� �ð��� yyyy��MM��dd�������� format( )�޼ҵ带 ����ؼ� ����
   %>
   �Ϲ����� JSP �������� ���·� �Ʒ��� ���� ���� ��¥�� �����մϴ�.<br>
   ���� ��¥�� <%= formatDate%> �Դϴ�.
  </body>
</html>