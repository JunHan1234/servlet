<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%	//현재 페이지를 벗어나도 request scope이기때문에 유지된다.
	request.setAttribute("user", new User("최한석", 12));
	//아직 response를 client로 안보냈기때문에 request scope은 살아있다.
%>
<jsp:forward page='4.requestB.jsp'/>