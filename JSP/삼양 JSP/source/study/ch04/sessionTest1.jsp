<%@ page contentType="text/html;charset=euc-kr"%>
<%//파라메터값의 한글처리
	request.setCharacterEncoding("euc-kr");
%>
<%  //6~7라인: 파라메터값을 얻어냄
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
    //세션속성 설정, 속성명은 id이고 속성값은 id레퍼런스 변수가 가진 객체
    session.setAttribute("id",id);
	session.setMaxInactiveInterval(60*2);//세션유지시간 2분설정
%>
<h2>Session내장객체 예제</h2>
<FORM METHOD="post" ACTION="sessionTest2.jsp">
    ☆ 가장 좋아하는 스포츠를 선택하세요. ☆ <br>
	<INPUT TYPE="radio" NAME="sports" VALUE="태권도">태권도
	<INPUT TYPE="radio" NAME="sports" VALUE="유도">유도
	<INPUT TYPE="radio" NAME="sports" VALUE="프로레슬링">프로레슬링
	<INPUT TYPE="radio" NAME="sports" VALUE="이종격투기">이종격투기<p>

	☆ 가장 좋아하는 게임을 선택하세요. ☆ <br>
	<SELECT NAME="game">
	  <OPTION VALUE="스타크">스타크(아직도 좋다)</OPTION>
	  <OPTION VALUE="WOW">WOW</OPTION>
	  <OPTION VALUE="리니지">리니지</OPTION>
	</SELECT>
	<INPUT TYPE="submit" VALUE="전송">
</FORM>