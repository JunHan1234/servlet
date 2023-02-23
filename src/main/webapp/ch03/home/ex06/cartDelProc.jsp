<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] delProducts = request.getParameterValues("delProduct");
	
	if(delProducts != null && delProducts.length > 0) {
		List<String> cart = new ArrayList<>();
		
		Object cartObj = session.getAttribute("cart");
		if(cartObj != null) cart = (List<String>)cartObj;
		
		for(String delProduct: delProducts)
			cart.remove(delProduct);
		
		session.setAttribute("cart", cart);
%>
		<c:redirect url='cartOut.jsp'/>	
<%		
	} else {
%>
		<c:redirect url='cartOut.jsp'>
			<c:param name='msg' value='장바구니에서 삭제할 물건을 확인해 주세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='main.jsp'/>