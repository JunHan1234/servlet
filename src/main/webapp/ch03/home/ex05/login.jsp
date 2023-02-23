<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp' method='post'>
	<label for="userId">아이디</label>
	<input type='text' name='userId'/> <br>
	
	<label for="userPw">패스워드</label>
	<input type='text' name='userPw'/> <br>
	
	<input type='submit' name='login'/>
</form>

<%
	String msg = request.getParameter("msg");
	if(msg != null) {
%>
		<%= msg %>
<%		
	}
%>