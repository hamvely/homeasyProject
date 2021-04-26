package com.kh.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeInsertServlet
 */
@WebServlet("/adminInsert.no")
public class AdminNoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//System.out.println("title");
		//System.out.println("content");
		
		request.setCharacterEncoding("utf-8");

		String noticeTitle = request.getParameter("title");
		String noticeContent = request.getParameter("content");
		
		HttpSession session = request.getSession();
		//Member loginUser = (Member)session.getAttribute("loginUser");
		//String email = loginUser.getEmail(); 
	
		Notice n = new Notice();
		n.setNoticeTitle(noticeTitle);
		n.setNoticeContent(noticeContent);
		
		int result = new NoticeService().insertNotice(n);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "공지사항이 성공적으로  등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminList.no");
			
		}else {
			request.setAttribute("alertMsg", "공지사항 등록 실패");
			request.getRequestDispatcher("views/notice/adminNoticeList.jsp").forward(request, response);
			
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
