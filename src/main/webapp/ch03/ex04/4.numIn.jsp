<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='4.numOut.jsp' method='post'>
	<input type='number' name='num'/>
	<input type='submit'/>
</form>

<!-- 현 페이지에서 파라미터를 읽어들인다. -->
<%
	String msg = request.getParameter("msg");
%>
<%= msg != null ? msg : "" %>