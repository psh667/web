<%@ page contentType="text/html;charset=euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<h2>Session���尴ü ����</h2>
<%  //7~8����:�Ķ���Ͱ��� ��
	String sports = request.getParameter("sports");
	String game = request.getParameter("game");
	//10����: ���ǼӼ����� �� => ���� ���� ���θ� �Ǵܰ���
	String id = (String)session.getAttribute("id"); 
	String sessionId = session.getId();//�� �������� ��������ID�� ��
	
	if(id != null){//������ ����� ����
%>
<b><%=id%></b>�� �������ּż� �����մϴ�. <br>
<%=id%> �� �����ϴ� �������� <%=sports%>�̰�, <br>
�����ϴ� ������ <%=game%> �Դϴ�.<p>
���� ���������� ���� ID : <%=sessionId%><p>

<%
	 session.invalidate();//���� ��ȿȭ
	}else{//�������� ���� ����� ����
         out.println("�α����� �Ͻñ� �ٶ��ϴ�.");
    }
%>




