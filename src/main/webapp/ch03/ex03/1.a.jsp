<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	//page이동을 자동으로 해보자. page 이동을 tomcat에게 시킨다.
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");

	//forward는 1.a.jsp request를 1.b.jsp로 넘겨주고
	// 1.b.jsp response 의 값으로 1.a.jsp의 response를 덮어써버린다.
	dispatcher.forward(request, response);
%>
<!--
response 2개를 합치고 싶다면 include Action이용하자. ex03.4번 예제.
include Action은 논리적으로 response를 만드는 과정에서 결합하기 때문이다.
-->