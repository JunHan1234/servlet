<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<h3>진열대</h3>
<form action='cartAddProc.jsp'>
	<ul>
		<li>컴퓨터<input type='checkbox' name='product' value='컴퓨터'/></li>
		<li>모니터<input type='checkbox' name='product' value='모니터'/></li>
		<li>마우스<input type='checkbox' name='product' value='마우스'/></li>
		<li>키보드<input type='checkbox' name='product' value='키보드'/></li>
	</ul>
</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>