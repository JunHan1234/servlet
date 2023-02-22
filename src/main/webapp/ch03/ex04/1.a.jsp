<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	//redirect
	//client가 A에게 request를 보내면 
	//자동으로 B에 request를 보내서 B에서 response를 받는다.
	response.sendRedirect("1.b.jsp");
%>

<!-- 
	forward와 redirect의 차이점.
	redirect는 중간에 client가 끼어든다.
	redirect는 forward를 대체할 수 있지만,
	forward는 redirect를 대체할 수 없다.
-->