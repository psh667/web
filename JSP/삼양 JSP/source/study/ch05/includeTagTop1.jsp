<%@ page contentType="text/html;charset=euc-kr"%>
<%//includeTag1Form.jsp페이지의 파라메터 변수 name의 값을 얻어냄
  //같은 request객체를 공유하기 때문에 사용가능
   String name = request.getParameter("name");
%>
포함되는 페이지 includeTagTop1.jsp 입니다.<p>
<b><%=name%> 님 오셨구려..</b>
<hr>