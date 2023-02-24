<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%	//쿠키객체 생성 후 response에 저장하면 끝.
	//Cookie Name, Cookie value // 둘다 string.
	Cookie cookie1 = new Cookie("userName", "john");
	Cookie cookie2 = new Cookie("age", "32");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>