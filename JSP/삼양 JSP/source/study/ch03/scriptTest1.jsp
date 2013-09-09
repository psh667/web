<%@ page contentType="text/html;charset=euc-kr"%>
<html>
  <head><title>JSP스크립트 예제</title></head>
  <body>
    <h2>JSP스크립트 예제</h2>
    <%!//선언문:6~8라인 =>멤버변수 declaration선언
 	  String declaration = "선언문 연습입니다";//전역변수
    %>
    <%!//선언문:9~13라인 =>메소드를 선언
 	  public String declarationMethod(){
 	    return declaration;
 	  }
    %>
    <%//스크립트릿:14~18라인 =>로직기술, 지역변수 선언
 	  String scriptlet = "스크립트릿 연습";//지역변수
      String comment = "주석문 연습";//지역변수
 	  out.println("내장객체를 이용한 내용 출력 : " + declaration + "<p>");
    %>
 <%--표현식: 20~22라인 --%>
    선언문 출력하기(변수) : <%=declaration%><p>
    선언문 출력하기(메소드) : <%=declarationMethod()%><p>
    스크립트릿 출력하기 : <%=scriptlet%><p>
   <!--JSP에서 사용하는 HTML주석부분-->
   <!-- HTML주석 :  <%=comment%> --><p>
   <%-- JSP 주석 : <%=comment%> --%>
   <%  /* 자바주석 26~30: 스크립트릿
    (여러줄 주석)
     */  
   %> 
   <%// 자바주석(한줄 주석)%>
  </body>
</html>



