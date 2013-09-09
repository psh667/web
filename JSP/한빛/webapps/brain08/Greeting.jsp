<%@page contentType="text/html; charset=euc-kr"%>
<HTML>
    <HEAD><TITLE>애플릿으로 인사하기</TITLE></HEAD>
    <BODY>
        <jsp:plugin type="applet" code="GreetingApplet.class" width="500" height="200" >
          <jsp:params>
               <jsp:param name="GREETING" value="기체후 일향 만강하시옵니까."/>
               <jsp:param name="FONT" value="궁서체"/>
           </jsp:params>
      </jsp:plugin>
    </BODY>
</HTML>
