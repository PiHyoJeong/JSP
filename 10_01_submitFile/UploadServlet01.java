package com.woori.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload.do")
public class UploadServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
	
		//여기를 바꿔주면 다운받는 경로가 바뀜
		String savePath = "upload";
		//최대 업로드 파일 크기 5MB 로 제한
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		//서버상의 실제 경로 찾아내기
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리");
		System.out.println(uploadFilePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, //request 객체
					uploadFilePath, //서버상의 실제 디렉토리
					uploadFileSizeLimit, //최대 업로드 파일 크기
					encType, //인코딩 방법
					//동일한 이름이 존재하면 새로운 이름이 부여됨
					new DefaultFileRenamePolicy());
			//업로드된 파일의 이름 얻기
			String fileName = multi.getFilesystemName("uploadFile");
			String fileName2 = multi.getOriginalFileName("uploadFile");
			
			if(fileName == null) { //파일이 업로드 되지 않았을때
				System.out.println("파일이 업로드 되지 않음");
			}else { //파일이 업로드 되었을 때
				out.print("<br> name : " + multi.getParameter("name"));
				out.print("<br>title : " + multi.getParameter("title"));
				out.print("<br>filename(s) : " + fileName); //서버상에 올라가는 파일 이름
				out.print("<br> 파일명(o) : " + fileName2); //내가 선택한 파일 이름
			}//else
			
		}catch(Exception e) {
			System.out.println("예외발생 : " + e);
		}//catch
		
	}

}
