<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib prefix="test" uri="/WEB-INF/tlds/el-functions.tld" %>
<% request.setCharacterEncoding("euc-kr");%>

<HEAD>
<TITLE>ǥ������ �Լ�����ϱ�</TITLE>
</HEAD>

<BODY>

<H3>ǥ������ �Լ�����ϱ� -�� ������ ����</H3>
<P>
<FORM action="eLEx3.jsp" method="post">
   X : <input type="text" name="x" value="${param['x']}">
   <BR>
   Y : <input type="text" name="y" value="${param['y']}">
   <input type="submit" value="����">
</FORM>

<P>
���� : ${test:add(param["x"],param["y"])} �Դϴ�.

</BODY>
</HTML>
