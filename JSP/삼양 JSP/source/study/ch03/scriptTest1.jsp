<%@ page contentType="text/html;charset=euc-kr"%>
<html>
  <head><title>JSP��ũ��Ʈ ����</title></head>
  <body>
    <h2>JSP��ũ��Ʈ ����</h2>
    <%!//����:6~8���� =>������� declaration����
 	  String declaration = "���� �����Դϴ�";//��������
    %>
    <%!//����:9~13���� =>�޼ҵ带 ����
 	  public String declarationMethod(){
 	    return declaration;
 	  }
    %>
    <%//��ũ��Ʈ��:14~18���� =>�������, �������� ����
 	  String scriptlet = "��ũ��Ʈ�� ����";//��������
      String comment = "�ּ��� ����";//��������
 	  out.println("���尴ü�� �̿��� ���� ��� : " + declaration + "<p>");
    %>
 <%--ǥ����: 20~22���� --%>
    ���� ����ϱ�(����) : <%=declaration%><p>
    ���� ����ϱ�(�޼ҵ�) : <%=declarationMethod()%><p>
    ��ũ��Ʈ�� ����ϱ� : <%=scriptlet%><p>
   <!--JSP���� ����ϴ� HTML�ּ��κ�-->
   <!-- HTML�ּ� :  <%=comment%> --><p>
   <%-- JSP �ּ� : <%=comment%> --%>
   <%  /* �ڹ��ּ� 26~30: ��ũ��Ʈ��
    (������ �ּ�)
     */  
   %> 
   <%// �ڹ��ּ�(���� �ּ�)%>
  </body>
</html>



