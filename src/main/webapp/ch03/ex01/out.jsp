<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	//본 script는 jsp service 를 채우고 있다.
	//따라서 out객체를 바로 이용가능.
	for(int i = 0; i < 10; i++)
		out.print(i + "&nbsp;");
%>