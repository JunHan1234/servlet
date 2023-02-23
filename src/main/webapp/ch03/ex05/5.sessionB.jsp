<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='5.main.jsp'>main</a>
<!--
session scope이기때문에 user data 이용 가능하다.
logout 후 B로 와보면 새로운 session객체에는 data가 없으므로 null이다.
-->
<p><%= session.getAttribute("user") %></p>