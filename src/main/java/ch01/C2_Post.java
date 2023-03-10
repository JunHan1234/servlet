package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/post/add")
public class C2_Post extends HttpServlet {
	@Override //논리적이였던 req, res를 객체 생성 한 후에는 메모리상 공간을 차지하기 때문에 물리적이다.
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8"); //html meta tag에 기술했던것을 servlet에선 dynamic하게 기술.
		PrintWriter out = res.getWriter();
		out.println("<h2>POST</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}
