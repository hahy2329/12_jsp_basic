package _06_files;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String deleteFileName = request.getParameter("deleteFileName");
		String saveDirectory = "C:\\Users\\12_web_hjs\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter06_file\\file_repository\\";
		
		File file = new File(saveDirectory + deleteFileName);
		
		String jsScript = "";
		if(file.exists()) {
			file.delete();
			
			jsScript = "<script>";
			jsScript += "alert('삭제 되었습니다.');";
			jsScript += "location.href='fileMain';";
			jsScript += "</script>";
		}
		else {
			
			jsScript = "<script>";
			jsScript += "alert('존재하지 않는 파일입니다.');";
			jsScript += "location.href='fileMain';";
			jsScript += "</script>";
		}
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsScript);
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
