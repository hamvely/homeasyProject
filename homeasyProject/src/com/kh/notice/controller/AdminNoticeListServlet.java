package com.kh.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.service.NoticeService;
import com.kh.notice.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeListServlet
 */
@WebServlet("/adminList.no")
public class AdminNoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//  페이징 처리
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;

		listCount = new NoticeService().selectListCount();
		//System.out.println(listCount); 
		
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 10;
		boardLimit = 10;
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if(endPage > maxPage){
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		System.out.println(pi);

		ArrayList<Notice> list = new NoticeService().selectList(pi);

		/* 나중에 지우기
		for(Member m : list) {
			System.out.println(m);
		}
		System.out.println("==========================");
		*/
		
		//request.setAttribute("pi", pi);
		//request.setAttribute("list", list);
		
		//request.getRequestDispatcher("views/member/adminMember.jsp").forward(request, response);


		// 2. 현재 요청한 페이지(currentPage)에 보여질 게시글 리스트 조회해오기
		//ArrayList<Notice> adminList = new NoticeService().selectNoticeListAdmin();
		//request.setAttribute("adminList", adminList);
		
		//request.getRequestDispatcher("views/notice/adminNoticeList.jsp").forward(request, response);
		//RequestDispatcher view = request.getRequestDispatcher("views/notice/adminNoticeList.jsp");
		//view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
