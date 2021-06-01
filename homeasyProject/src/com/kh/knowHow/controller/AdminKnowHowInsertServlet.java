package com.kh.knowHow.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.knowHow.model.service.KnowHowService;
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
			
			// postTitle 변수에 enroll 인풋 name에 지정한 post_title 기록
			String userNo = multiRequest.getParameter("user_no");
			String postCateName = multiRequest.getParameter("post_cate_name");
			String postTitle = multiRequest.getParameter("post_title");
			String postContent = multiRequest.getParameter("post_content");
			String postUpdateDate = multiRequest.getParameter("post_update_date");
			String postStatus = multiRequest.getParameter("post_status");
			String upFile = multiRequest.getParameter("upfile");
			
			KnowHow k = new KnowHow();
			k.setPostTitle(postTitle);
			k.setPostContent(postContent);
			
			//System.out.println(multiRequest.getOriginalFileName("upfile"));
			KnowHowFile kf = null;
			System.out.println(upFile);
			if(multiRequest.getOriginalFileName("upfile") != null) {
				
				kf = new KnowHowFile();
				kf.setPostFileRename(multiRequest.getFilesystemName("upfile"));
				
			}
			
			// 게시판 작성용 서비스 요청 및 결과받기
			int result = new KnowHowService().insertKnowHow(k, kf);
			// case1 : 첨부파일o -> insertKnowHow(생성된 k객체, 생성된 kf객체)
			// case2 : 첨부파일x -> insertKnowHow(생성된 k객체, null)
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "노하우 등록 성공");
				response.sendRedirect(request.getContextPath() + "/adminlist.kh?currentPage=1");
			}else {
				request.setAttribute("errorMsg", "노하우 등록 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
