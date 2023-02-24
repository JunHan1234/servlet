<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	
	if(products.length > 0 && products != null) {
		List<String> cart = new ArrayList<>();
		
		Object cartObj = session.getAttribute("cart");
		if(cartObj != null) cart = (List<String>)cartObj;
		
		for(String product: products) {
			cart.add(product);
			
		session.setAttribute("cart", cart);
%>
		<ul>
			<li><%= product %> <input type='checkbox' name='product' value='<%= product %>'/></li>
		</ul>
<%
		}
%>

<%
	} else {
%>
		<c:redirect url='main.jsp'>
			<c:param name='msg' value='장바구니에 담길 물건을 확인해주세요.'/>
		</c:redirect>
<%
	}
%>