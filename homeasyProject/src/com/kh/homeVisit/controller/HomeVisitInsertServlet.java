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
import com.kh.homeVisit.model.service.HomeVisitService;
import com.kh.homeVisit.model.vo.HomeVisit;
import com.kh.qna.model.vo.Attachment;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class HomeVisitInsertServlet
 */
@WebServlet("/insert.ho")
public class HomeVisitInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeVisitInsertServlet() {
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
			
			HomeVisit h = new HomeVisit();
			h.setUserNo(Integer.parseInt(multiRequest.getParameter("userNo")));			
			h.setPostTitle(multiRequest.getParameter("title"));
			h.setPostContent(multiRequest.getParameter("content"));
		

			ArrayList<Attachment> list = new ArrayList<>();
			
			for(int i=1; i<=1; i++) {
				
				String key = "file" + i;
				if(multiRequest.getOriginalFileName(key) != null) {
					
					Attachment at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName(key));
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("/resources/post_upfiles/");
					
					if(i==1) {
						at.setFileLevel(0);
					}else {
						at.setFileLevel(1);
					}
					
					list.add(at);
					
				}
			}
			
			int result = new HomeVisitService().insertHomeVisitWrite(h, list);
			
			/*if(result > 0) {
				
				request.getSession().setAttribute("alertMsg", "집들이 글쓰기 성공");
				response.sendRedirect(request.getContextPath() + "/list.ho");
			
			}else {
				request.getSession().setAttribute("alertMsg", "집들이 글쓰기 실패");
				response.sendRedirect(request.getContextPath() + "/write.ho");
			}*/
			
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
