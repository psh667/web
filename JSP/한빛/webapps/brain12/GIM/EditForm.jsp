<%@page contentType="text/html; charset=euc-kr" %>
<HTML>
    <HEAD>
        <TITLE>��ǰ ���� ����</TITLE>
    </HEAD>
    <BODY>
        <H4>��ǰ ������ ������ �� ���� ��ư�� �����ʽÿ�.</H4>
        <FORM ACTION=Updater.jsp METHOD=POST>
            �ڵ�: <INPUT TYPE=TEXT NAME=code SIZE=5 VALUE='${CODE}' READONLY=TRUE> <BR>
            ����: <INPUT TYPE=TEXT NAME=title SIZE=50 VALUE='${TITLE}'> <BR>
            ����: <INPUT TYPE=TEXT NAME=writer SIZE=20 VALUE='${WRITER}'> <BR>
            ����: <INPUT TYPE=TEXT NAME=price SIZE=8 VALUE='${PRICE}'>�� <BR>
            <INPUT TYPE=SUBMIT VALUE='����'>
        </FORM>
    </BODY>
</HTML>
