<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%--
<%@ page import='java.net.URLEncoder' %>
--%>
<%
	String userId = request.getParameter("userId");
	String pw = request.getParameter("pw");
	
	if(userId.equals("java") && pw.equals("java")) {
		session.setAttribute("userId", userId);
%>
		<c:redirect url='main.jsp'/>
<%
	} else {
%>
		<c:redirect url='login.jsp'>
			<c:param name='msg' value='ID와 PW를 확인해 주세요.'/>
		</c:redirect>
<%
	}
%>
<%--
<%
	String url = "main.jsp?msg=";
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");

	if(userId.equals("java") && userPw.equals("java")) {
		url += URLEncoder.encode(userId + "님, 환영합니다.", "utf-8");
%>
			<c:redirect url='<%= url %>'/>
<%
	} else {
		url = "login.jsp?msg=" +
			URLEncoder.encode("login 정보가 올바르지 않습니다.", "utf-8");
%>
			<c:redirect url='<%= url %>'/>
<%
	}
%>
 --%>