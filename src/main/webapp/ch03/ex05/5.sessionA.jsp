<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<a href='5.main.jsp'>main</a>
<%	//session객체는 이미 main에서 A로 넘어올때부터 존재.
	session.setAttribute("user", new User("최한석", 12));
%>
<p><%= session.getAttribute("user") %></p>