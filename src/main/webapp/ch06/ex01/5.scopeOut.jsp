<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ol>
	<!-- pageContext부터 순서대로 뒤지기 때문에, 
	  처음 발견되는 request의 scope이 출력된다. -->
	<li>${scope}</li>
	<li>${pageScope.scope}</li>
	<li>${requestScope.scope}</li>
	<li>${sessionScope.scope}</li>
	<li>${applicationScope.scope}</li>
</ol>