<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%! //add라는 method를 추가. 이 문법을 선언 이라고 한다.
	//member method를 class에 추가.
	public int add(int num1, int num2) {
		return num1 + num2;
	}
	
	//member 변수를 class에 추가.
	int num1 = 1;
%>
<%
	int num2 = 2;
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>