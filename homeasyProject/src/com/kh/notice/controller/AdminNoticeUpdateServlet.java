package com.kh.notice.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeUpdateServlet
 */
@WebServlet("/adminUpdate.no")
public class AdminNoticeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		String noticeTitle = request.getParameter("title");
		Date createDate = Date.valueOf(request.getParameter("createDate"));
		String noticeContent = request.getParameter("content");
		//String status = request.getParameter("status");
		
		Notice n = new Notice();
		n.setNoticeNo(noticeNo);
		n.setNoticeTitle(noticeTitle);
		n.setCreateDate(createDate);
		n.setNoticeContent(noticeContent);
		//n.setStatus(status);
		
		System.out.println(n);
		
		int result = new NoticeService().updateNotice(n);
		
		if(result > 0) { // 수정 성공 => /detail.no?nno=글번호  url재요청 => 상세보기페이지
			
			//request.getSession().setAttribute("alertMsg", "성공적으로 공지사항 수정됐습니다.");
			// => 상세보기 요청 (detail.no)
			response.sendRedirect(request.getContextPath() + "/adminDetail.no?nno=" + noticeNo);
			
		}else { // 수정 실패 => 에러문구 담아서 에러페이지 포워딩
			request.getSession().setAttribute("alertMsg", "공지사항 수정 실패");
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
