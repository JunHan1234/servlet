<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%				//return type이 object이므로 본래의 type으로 casting.
	User user = (User)request.getAttribute("user");
%>
<jsp:forward page='4.requestC.jsp'/>