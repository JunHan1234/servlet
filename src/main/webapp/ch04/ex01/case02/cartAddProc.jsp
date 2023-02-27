<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	
	//물건이 있으면 ~
	if(products != null) {
		//cart의 내용물 string 준비.
		String cart = "";
		for(String product: products) cart += product + "/";
		
		//cookie는 data type이 string이라 cart의 내용물도 string으로 준비했다.
		Cookie cookie = new Cookie("cart", cart);
		cookie.setMaxAge(60 * 60 * 24 * 7);
		response.addCookie(cookie);
	}
%>
<c:redirect url='cartOut.jsp'/>