<%@ page contentType="text/html;charset=euc-kr"%>
<% //��û������ ���Ե� �������� �ѱ��� ���� ����� �ѱ�ó��
   //��û������ �Ķ���ͺ����� ����
   //��û������ ������������ �������� �Ѿ�� ����
request.setCharacterEncoding("euc-kr");//method�� post���
%>
<h2>If-else�� ���� - �����ϴ� �� ����</h2>

<% //10~11�� �Ķ���ͺ��� name�� color�� ���� ��
   String name = request.getParameter("name");
   String color = request.getParameter("color");
   String selectColor = "";//�������� �ʱ�ȭ
  //color�Ķ���� �����κ��� �� ���� ������ , 
  //selectColor ������ ���� ���� ����
   if (color.equals("blue")) {//�ΰ��� ���ڿ��� �������� �񱳽ÿ� �׻� equals()�޼ҵ���
 	   selectColor = "�Ķ���";
   } else if (color.equals("green")) {
	   selectColor = "�ʷϻ�";
    }else if (color.equals("red")){
       selectColor = "������";
   }else{
       selectColor = "��Ÿ��";
    }
%>

<%=name%>���� ������ ���� <%=selectColor%>�Դϴ�.<p>
������ ��:<br>
<img src="<%=color + ".jpg"%>" border="0">












