package com.kh.knowHow.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.knowHow.model.vo.KnowHow;
import com.kh.knowHow.model.vo.KnowHowFile;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminKnowHowInsertServlet
 */
@WebServlet("/adminInsert.kh")
public class AdminKnowHowInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminKnowHowInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10 * 1024 * 1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/post_upfiles/");
			//System.out.println(savePath);
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			String postTitle = multiRequest.getParameter("post_title");
			String postContent = multiRequest.getParameter("post_content");
			
			KnowHow k = new KnowHow();
			k.setPostTitle(postTitle);
			k.setPostContent(postContent);
			
			//System.out.println(multiRequest.getOriginalFileName("upfile")); // view단에 input type="file"의 name
			KnowHowFile kf = null;
			
			if(multiRequest.getOriginalFileName("upfile") != null) {
				
				kf = new KnowHowFile(); // KnowHowFile테이블에 insert할 데이터 담기
				kf.setPostFileNo(multiRequest.get);
				kf.setRefPostNo(multiRequest.getRefPostNo);
				kf.setPostFileRename(multiRequest.getFilesystemName("upfile"));
				
				
			}
		
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
