package _08_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servletEx04")
public class ServletEx04 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * 
		 *  # PrintWriter
		 *
		 *  response.getWriter(); 메서드를 이용하여 PrintWriter 객체를 생성한다.
		 *  PrintWriter 클래스는 Springframework의 @ResponseBody , ResponseEntity , @RestController와 같은 기능을 한다.
		 *  PrintWriter 클래스의 print()메서드로 새로운 html을 표시한다.
		 *  
		 * */
		
		//반환되는 데이터의 encoding지정
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		// out.print("<h1>아무말</h1>");
		
		String jsScript = "";
		boolean temp = true;
		
		if(temp) {
		
			jsScript +="<script>";
			jsScript +="alert('1번 예시로 이동합니다.');";
			jsScript +="location.href='servletEx01';";
			jsScript +="</script>";
			
			
			
		}
		else {
			jsScript +="<script>";
			jsScript +="alert('2번 예시로 이동합니다.');";
			jsScript +="location.href='servletEx02';";
			jsScript +="</script>";
			
			
		}
		
		out.print(jsScript);
		
		
	}


}
