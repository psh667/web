<%@ page contentType="text/html;charset=euc-kr"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<h2>Session내장객체 예제</h2>
<%  //7~8라인:파라메터값을 얻어냄
	String sports = request.getParameter("sports");
	String game = request.getParameter("game");
	//10라인: 세션속성값을 얻어냄 => 세션 유지 여부를 판단가능
	String id = (String)session.getAttribute("id"); 
	String sessionId = session.getId();//웹 브라우저의 고유세션ID를 얻어냄
	
	if(id != null){//인증된 사용자 영역
%>
<b><%=id%></b>님 접속해주셔서 감사합니다. <br>
<%=id%> 님 좋아하는 스포츠는 <%=sports%>이고, <br>
좋아하는 게임은 <%=game%> 입니다.<p>
현재 웹브라우저의 세션 ID : <%=sessionId%><p>

<%
	 session.invalidate();//세션 무효화
	}else{//인증되지 않은 사용자 영역
         out.println("로그인을 하시기 바랍니다.");
    }
%>




