package com.kh.homeVisit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.qna.model.service.QnaService;
import com.kh.qna.model.vo.Attachment;
import com.kh.qna.model.vo.Qna;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class homeVisitWrite
 */
@WebServlet("/insert.ho")
public class homeVisitInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homeVisitInsertServlet() {
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
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
		
			Qna q = new Qna();
			q.setUserNo(multiRequest.getParameter("userNo"));
			q.setPostFileRename(multiRequest.getParameter("postFileRename"));
			q.setPostTitle(multiRequest.getParameter("postTitle"));
			q.setPostContent(multiRequest.getParameter("postContent"));
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			for(int i=1; i<=1; i++) {
				
				String key = "file" + i;
				if(multiRequest.getOriginalFileName(key) != null) {
					
					Attachment at = new Attachment();
					at.setPostFileNo(multiRequest.getOriginalFileName(key));
					at.setPostNo(multiRequest.getFile(key));
					at.setPostFileReName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/post_upfiles");
					
					
					list.add(at);
					
				}
			}
			
			int result = new QnaService().insertQnaWrite(q, list);
			
			if(result > 0) {
				
				request.getSession().setAttribute("alertMsg", "집들이 글쓰기 완료");
				response.sendRedirect(request.getContextPath() + "/list.ho");
			
			}else {
				request.getSession().setAttribute("alertMsg", "집들이 글쓰기 실패");

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
