<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!-- if action tag를 사용해본다. -->
<!-- test의 결과값이 true이면 response 값이 출력된다. -->
<!-- if들은 비 배타적이기 때문에 true값 모두 읽힌 순서대로 출력된다. -->
<c:if test='${param.color == 1}'>빨강</c:if>
<c:if test='${param.color == 2}'>노랑</c:if>
<c:if test='${param.color == 3}'>파랑</c:if>
<c:if test='${param.color == 1}'>RED</c:if>