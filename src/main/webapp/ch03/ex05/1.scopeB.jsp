<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= pageContext.getAttribute("one") %></li>
	<li><%= request.getAttribute("two") %></li>
	<li><%= session.getAttribute("three") %></li> <!-- A에서 썼던 객체와 동일. -->
	<li><%= application.getAttribute("four") %></li> <!-- A에서 썼던 객체와 동일. -->
</ul>