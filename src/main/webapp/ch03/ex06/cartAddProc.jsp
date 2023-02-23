<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");

	if(products != null && products.length > 0) {
		List<String> cart = new ArrayList<>();
		
		for(String product: products)
			cart.add(product);
		
		session.setAttribute("cart", cart); //session에 장바구니를 준비한다.
	}
%>
<!-- 장바구니 보기라는 새로운 request로 진행. -->
<c:redirect url='cartOut.jsp'/>