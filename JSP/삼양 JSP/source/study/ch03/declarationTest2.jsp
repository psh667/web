<%@ page contentType="text/html;charset=euc-kr"%>

<h2>���� ����2 - ��������� �޼ҵ�</h2>
<%!
  double var1;
  int var2 = 1;

  public double sum(){
    return var1 + var2;
  }

  String str="������..";
  int var3 = 10;
%>

���� var1 �� ���� var2�� ��: <%=sum()%><p>
���� str�� ����: <%=str%><p>
���� var3�� ��: <%=var3%>