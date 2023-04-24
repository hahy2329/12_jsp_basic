package _07_el_jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/elEx01")
public class ElEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//서블렛에서 뷰로 데이터를 전송할 경우 request.setAttribute("속성명", 값); 메서드를 통하여서 전송한다.
		request.setAttribute("name", "팀 버너스 리");
		request.setAttribute("num1", 12);
		request.setAttribute("num2", 3);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_el_jstl/elEx01.jsp");
		dis.forward(request, response);
		
	}


}
