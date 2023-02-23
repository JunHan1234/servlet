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
	forward는 페이지 전환 주체가 서버이고,
	redirect는 페이지 전환 주체가 client다.
	따라서 redirect는 서로 다른 서버내에 있어도 페이지이동이 가능하다.
	(A 작업을 끝내고 B로 이동.)
	
	즉, redirect는 forward를 대체할 수 있지만,
	forward는 redirect를 대체할 수 없다.
-->