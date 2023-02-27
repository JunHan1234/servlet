<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	pageContext.setAttribute("username", "최한석");
%>
<!-- hr.servlet시 attribute value를 다음과같이 표현하면 된다. -->
${username} <br>
<!-- 존재하지 않는 attribute value를 표현하면 값은 null이다. -->
${hello} <br>
${empty hello} <br>
${empty username ? "무명" : username} <br>
<%-- 과제: 아래 조건문을 완성하세요. --%>
${!empty username ? username: "무명"} <br>