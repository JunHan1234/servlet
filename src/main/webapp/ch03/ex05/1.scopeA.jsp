<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	//parameter와 attribute의 차이점.
	//parameter는 client에서 생성된다., => parameter value는 string type.
	//parameter의 scope은 request 뿐이다.
	
	//attribute는 서버에서 생성된다.	=> attribute value는 object type.
	//attribute의 scope은 아래와 같다. scope의 범위는 아래로 갈수록 넓다.
	pageContext.setAttribute("one", "페이지");
	request.setAttribute("two", "리퀘스트");
	session.setAttribute("three", "세션");
	application.setAttribute("four", "애플리케이션");
%>

<c:redirect url='1.scopeB.jsp'/>

<!-- 
pageContext의 scope는 현재 페이지가 시작하면 살아나고, 작동하는 동안 살아있다. B로 이동하는 순간 사라짐.
request는 하나의 request작업이 동작하는 동안이다. client가 request 보낼때 존재하고 response를 받기 전까지 유지된다.
session객체는 논리적인 연결이 존재하면 scope이 유지된다. Session을 삭제한적이 없으므로 데이터가 유지된다.
application은 tomcat을 실행하면 살아있고, 종료될때까지 유지된다.
A에서 B로 이동하면서 scope이 유지되는 three four만 data가 유지. 
-->