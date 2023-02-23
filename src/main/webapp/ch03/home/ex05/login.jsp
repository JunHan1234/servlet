<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<!-- method가 get이면 pw가 브라우저창에 노출되기때문에 post방식을 쓴다. -->
<form action='loginProc.jsp' method='post'>
	<label for="userId">아이디</label>
	<input type='text' name='userId'/> <br>
	
	<label for="userPw">패스워드</label>
	<input type='text' name='pw'/> <br>
	
	<button type='submit'>로그인</button>
</form>

<%
	String msg = request.getParameter("msg");
	if(msg != null) {
%>
		<%= msg %>
<%		
	}
%>