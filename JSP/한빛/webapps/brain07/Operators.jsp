<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD><TITLE>�ͽ������� ��� ������ ����</TITLE></HEAD>
    <BODY>
        X = ${param.NUM1}, Y = ${param.NUM2} <BR><BR>    	  
        X + Y = ${param.NUM1 + param.NUM2} <BR>
        X - Y = ${param.NUM1 - param.NUM2} <BR>
        X * Y = ${param.NUM1 * param.NUM2} <BR>
        X / Y = ${param.NUM1 / param.NUM2} <BR>
        X % Y = ${param.NUM1 % param.NUM2} <BR><BR>
        X�� �� Ů�ϱ�? ${param.NUM1 - param.NUM2 > 0} <BR>
        Y�� �� Ů�ϱ�? ${param.NUM1 - param.NUM2 < 0} <BR><BR>
        X�� Y�� ��� ����Դϱ�? ${(param.NUM1 > 0) && (param.NUM2 > 0)} <BR><BR>
        X�� Y�� �����ϱ�? ${param.NUM1 == param.NUM2? "��" : "�ƴϿ�"} <BR> <BR>
    </BODY>
</HTML>
