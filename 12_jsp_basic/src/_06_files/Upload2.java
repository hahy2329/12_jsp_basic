package _06_files;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/upload2")
public class Upload2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String saveDirectory="C:\\Users\\12_web_hjs\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter06_file\\file_repository\\";
		MultipartRequest multipartRequest = new MultipartRequest(request, saveDirectory, 1024*1024*100, "utf-8", new DefaultFileRenamePolicy());
		
		String uploader = multipartRequest.getParameter("uploader");
		System.out.println("uploader : " + uploader );
		
		
		Enumeration<?> files = multipartRequest.getFileNames();
		
		
		SimpleDateFormat sdf =  new SimpleDateFormat("yyyy-MM-dd");
		
		
		while(files.hasMoreElements()) { //다음<input type="file">이 있으면 
			
			String element = (String)files.nextElement();
			
			
			//원본 파일명이 있으면 => 파일을 업로드 했으면 
			if(multipartRequest.getOriginalFileName(element) != null) {
				
				
				String originalFileName = multipartRequest.getOriginalFileName(element);//업로드 '한' 파일명을 반환
				
				UUID uuid = UUID.randomUUID(); //(UUID.randomUUID():해쉬 생성 메서드)
				String date = sdf.format(new Date()); // 현재시간을 반환
				
				String renameFileName = date + "_" + uuid + "_" + originalFileName;
				
				//System.out.println("originalFileName : " + originalFileName);
				//System.out.println("renameFileName : " +renameFileName);
				
				
				File originalFile = new File(saveDirectory + originalFileName); //기존에 업로드한 파일을 읽어옴
				File renameFile = new File(saveDirectory + renameFileName); //변환된 파일명으로 새로운 파일을 생성 
				originalFile.renameTo(renameFile); //기존에 업로드한 파일을 새로운 파일명으로 이름 변경 
				
				
			}
			
			
			
			
			
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			String jsScript = "<script>";
					jsScript += "alert('파일을 업로드 하였습니다.');";
					jsScript += "location.href='fileMain';";
					jsScript += "</script>";
			out.print(jsScript);
			
			
			
		}
		
		
		
		
	}

}
