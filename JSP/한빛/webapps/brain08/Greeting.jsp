<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>���ø����� �λ��ϱ�</TITLE></HEAD>
    <BODY>
        <jsp:plugin type="applet" code="GreetingApplet.class" width="500" height="200" >
          <jsp:params>
               <jsp:param name="GREETING" value="��ü�� ���� �����Ͻÿɴϱ�."/>
               <jsp:param name="FONT" value="�ü�ü"/>
           </jsp:params>
      </jsp:plugin>
    </BODY>
</HTML>
