<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="mall.ProductInfo" %>
<%
    ProductInfo product = new ProductInfo();
    product.setName("초코케이크 3호");
    product.setPrice(20000);
    request.setAttribute("PRODUCT", product);
    RequestDispatcher dispatcher = request.getRequestDispatcher("ProductInfoView.jsp");
    dispatcher.forward(request, response); 
%>
