<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<body>
<h2>Request���尴ü ����1</h2>
<FORM METHOD=POST ACTION="requestTest1.jsp"><%--active:�ѱ�, inactive:���� --%>
 �̸� : <INPUT TYPE="text" NAME="name" style="ime-mode:active;"><br>
 ���� : <INPUT TYPE="text" NAME="age" style="ime-mode:inactive;"><br>
 ���� : ���� <INPUT  TYPE="radio" NAME="gender"  VALUE="m" checked>
       ���� <INPUT TYPE="radio" NAME="gender" VALUE="f"><br>
 ��� : <SELECT NAME="hobby" >
			<OPTION SELECTED VALUE="���ڱ�">���ڱ�</OPTION>
			<OPTION VALUE="TV��û">TV��û</OPTION>
			<OPTION VALUE="��ȭ����">��ȭ����</OPTION>
			<OPTION VALUE="����">����</OPTION>
			<OPTION VALUE="���">���</OPTION>
		</SELECT><br>
<INPUT TYPE="submit" value="������">
</FORM>
</body>
</html>