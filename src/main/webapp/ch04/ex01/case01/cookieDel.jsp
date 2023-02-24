<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%	//내가 삭제하고싶은 cookie name과 똑같은 쿠키 준비.
	Cookie cookie = new Cookie("age", "");
	//쿠키의 유통기한을 정한다.(0 = 태어나자마자 죽음.)
	cookie.setMaxAge(0);
	
	//새로 설정한 쿠키를 response에 저장하여 client로 보낸다.
	response.addCookie(cookie);
%>