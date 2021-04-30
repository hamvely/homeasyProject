package com.kh.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeDetailServlet
 */
@WebServlet("/adminDetail.no")
public class AdminNoticeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		
		int result = new NoticeService().increaseCount(noticeNo);
		
		if(result > 0) { // 조회수 증가성공 (유효한 공지사항번호) => 해당 공지사항 조회 후 noticeDetailView.jsp 응답
			
			Notice n = new NoticeService().selectNoticeAdmin(noticeNo);
			
			request.setAttribute("n", n);
			
			request.getRequestDispatcher("views/notice/adminNoticeDetail.jsp").forward(request, response);
			
			
		}else { // 조회수 증가실패 => 공지사항 상세조회 실패 => 에러문구 담아서 에러페이지
			
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
