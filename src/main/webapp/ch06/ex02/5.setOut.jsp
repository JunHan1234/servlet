<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<!-- request scope이 가장먼저 발견되므로. -->
${fruit} <br>
${pageScope.fruit} <br>
${requestScope.fruit} <br>
${sessionScope.fruit} <br>
${applicationScope.fruit}