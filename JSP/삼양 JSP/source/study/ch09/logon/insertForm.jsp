<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>ȸ������</title></head>
<body>
  <h2>ȸ������</h2>
  <FORM METHOD="post" ACTION="insertPro.jsp">
    ���̵� : <INPUT TYPE="text" NAME="id" maxlength="12"><p>
    �н����� : <INPUT TYPE="password" NAME="passwd" maxlength="12"><p>
    �̸�:<INPUT TYPE="text" NAME="name" maxlength="5"><p>
	�ֹι�ȣ:<INPUT TYPE="text" NAME="jumin1" maxlength="6">
	          -<INPUT TYPE="text" NAME="jumin2" maxlength="7"><p>
    E-Mail:<INPUT TYPE="text" NAME="email" maxlength="30"><p>
	Blog:<INPUT TYPE="text" NAME="blog" maxlength="50"><p>
    <INPUT TYPE="submit" VALUE="������">
  </FORM>
</body>
</html>