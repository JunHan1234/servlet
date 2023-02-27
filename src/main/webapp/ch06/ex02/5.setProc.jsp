<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<c:set var='fruit' value='사과'/> <!-- 특별히 scope을 지정안했기에 page scope이다. -->
<c:set var='fruit' value='부사'/> <!-- 덮어쓰기. -->
${fruit}

<c:set var='fruit' scope='page'>사과</c:set>
<c:set var='fruit' scope='request'>딸기</c:set>
<c:set var='fruit' scope='session'>머루</c:set>
<c:set var='fruit' scope='application'>포도</c:set>

<jsp:forward page='5.setOut.jsp'/>