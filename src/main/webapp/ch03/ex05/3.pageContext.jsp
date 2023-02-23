<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%	//여기 코드들은 현재 페이지 내에서만 유지된다.
	//다른 페이지로 넘어가면 없어짐.
	pageContext.setAttribute("user", new User("최한석", 12)); //attribute name, attribute value
	User user = new User("한아름", 42);
%>
<%= pageContext.getAttribute("user") %> <!-- attribute로써 사용. -->
<%= user %> <!-- 평범한 객체로써 사용. -->