<%@ page contentType="text/html;charset=euc-kr"%>
<% //요청정보에 포함된 데이터중 한글이 있을 경우의 한글처리
   //요청정보는 파라메터변수가 가짐
   //요청정보는 웹브라우저에서 웹서버로 넘어가는 정보
request.setCharacterEncoding("euc-kr");//method가 post방식
%>
<h2>If-else문 예제 - 좋아하는 색 선택</h2>

<% //10~11은 파라메터변수 name과 color의 값을 얻어냄
   String name = request.getParameter("name");
   String color = request.getParameter("color");
   String selectColor = "";//지역변수 초기화
  //color파라메터 변수로부터 얻어낸 값을 가지고 , 
  //selectColor 변수에 넣을 값을 결정
   if (color.equals("blue")) {//두개의 문자열이 같은가를 비교시에 항상 equals()메소드사용
 	   selectColor = "파랑색";
   } else if (color.equals("green")) {
	   selectColor = "초록색";
    }else if (color.equals("red")){
       selectColor = "빨강색";
   }else{
       selectColor = "기타색";
    }
%>

<%=name%>님이 선택한 색은 <%=selectColor%>입니다.<p>
선택한 색:<br>
<img src="<%=color + ".jpg"%>" border="0">












