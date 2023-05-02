package _05_bean;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String saveDirectory = "C:\\Users\\12_web_hjs\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter06_file\\file_repository\\";
		MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, 1024 * 1024 * 30, "utf-8",new DefaultFileRenamePolicy());
		
		
		
		String deleteFileName = request.getParameter("deleteFileName");
		new File(saveDirectory + deleteFileName).delete();
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String jsScript = "<script>";
				jsScript += "alert('파일을 수정 하였습니다.');";
				jsScript += "location.href='fileMain';";
				jsScript += "</script>";
		out.print(jsScript);
		
	}

}
