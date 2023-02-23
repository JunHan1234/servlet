<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%				//return type이 object이므로 본래의 type으로 casting.
	User user = (User)request.getAttribute("user");
%>
<%--
A에서 만든 request를 받아 user객체에 저장하고,
C페이지로 넘어간다.
--%>
<jsp:forward page='4.requestC.jsp'/>