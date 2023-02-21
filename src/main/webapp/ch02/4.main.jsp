<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- page를 실행시키면 header는 dynamic(include Action),
 footer는 static함(include Directive)을 새로고침으로 알 수 있다. --%>
<jsp:include page='4.header.jsp'/>
<hr>
본문
<hr>
<%@ include file='4.footer.jsp' %>