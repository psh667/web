<%@ page contentType="text/html;charset=euc-kr"%>
<%//�Ķ���Ϳ����� �ѱ�ó��
	request.setCharacterEncoding("euc-kr");
%>
<h2>Request���尴ü ����1</h2>
<%  //request��ü���� �Ķ���Ͱ��� ��
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
   //������ ó��
	if(gender.equals("m")){
	     gender = "����";
	}else{
	     gender = "����";
	}
%>
<%-- DB������ ���� �۾�--%>
<%-- ȭ�� ���--%>
<%=name%> ���� ������ ������ �����ϴ�.<p>
���� : <%=age%><p>
���� : <%=gender%><p>
��� : <%=hobby%>

