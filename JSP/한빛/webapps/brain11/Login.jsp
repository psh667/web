<%@page contentType="text/html; charset=euc-kr"%>
<%
    String id = request.getParameter("ID");
    String password = request.getParameter("PASSWORD");
    String message;
    if (id.equals("duke") && password.equals("1234")) {
        session.setAttribute("ID", id);
        message = "로그인되었습니다.";
    }
    else {
        message = "등록되지 않은 아이디 또는 패스워드입니다.";
    }
%>
<HTML>
    <HEAD><TITLE>로그인 결과</TITLE></HEAD>
    <BODY>
         <%= message %>
    </BODY>
</HTML> 
