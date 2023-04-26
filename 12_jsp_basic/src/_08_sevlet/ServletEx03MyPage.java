package _08_sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/servletEx03MyPage")
public class ServletEx03MyPage extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	
		//세션값 가져오기
		HttpSession session = request.getSession();//세션 객체를 생성하여
		String id = (String)session.getAttribute("id"); // getAttribute() 메서드를 사용하여 세션을 가져온다.
		
		//DB select에 넣었다고 가정하자.
		
		request.setAttribute("pageTitle", "마이페이지");
		request.setAttribute("name", "익명1");
		request.setAttribute("contact", "010-1234-5678");
		
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/servletEx03Mypage.jsp");
		dis.forward(request, response);
		
	}	
	
}
