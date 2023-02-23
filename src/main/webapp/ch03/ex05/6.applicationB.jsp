<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<!-- tomcat이 살아있으므로 app은 종료되지 않았고,
	당연히 scope도 살아있다. -->
<%= application.getAttribute("user") %>