<%@ page contentType="text/html;charset=euc-kr"%>
<%//파라메터에대한 한글처리
	request.setCharacterEncoding("euc-kr");
%>
<h2>Request내장객체 예제1</h2>
<%  //request객체에서 파라메터값을 얻어냄
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
   //성별값 처리
	if(gender.equals("m")){
	     gender = "남자";
	}else{
	     gender = "여자";
	}
%>
<%-- DB연동을 위한 작업--%>
<%-- 화면 출력--%>
<%=name%> 님의 정보는 다음과 같습니다.<p>
나이 : <%=age%><p>
성별 : <%=gender%><p>
취미 : <%=hobby%>

