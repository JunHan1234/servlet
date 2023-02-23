<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	String msg = request.getParameter("msg");
	if(msg == null) {
%>
		<form action='login.jsp' >
			<button type='submit' name='login'>login</button>
		</form>
<%
	} else {
%>
		<%= msg %>
		<form action='main.jsp' >
			<button type='submit' name='logout'>logout</button>
		</form>
<%
	}
%>