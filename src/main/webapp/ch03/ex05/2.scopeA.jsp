<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지");
	request.setAttribute("two", "리퀘스트");
	
	//1번예제에서 사용했던, attribute name이 중복이 되는경우,
	//현재 2번예제에서 또 write하는것을 경험할 수 있다.
	session.setAttribute("three", "세션2");
	application.setAttribute("four", "애플리케이션2");
%>

<c:redirect url='1.scopeB.jsp'/>