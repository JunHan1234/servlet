<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product"); //뺄 물건 준비
	Object cartObj = session.getAttribute("cart"); //장바구니 준비
	
	if(cartObj != null) { //장바구니가 있는지 확인
		List<String> cart = (List<String>)cartObj;
		
		if(products != null && products.length > 0) { //물건이 있는지 확인
			for(String product: products)
				cart.remove(product); //장바구니에서 물건을 뺀다.
		} else {
%>
			<c:set var='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
<%
		}
	} else {
%>
			<c:set var='msg' value='장바구니가 없습니다.'/>
<%
	}
%>
<c:redirect url='cartOut.jsp'>
	<c:param name='msg' value='${msg}'/>
</c:redirect>