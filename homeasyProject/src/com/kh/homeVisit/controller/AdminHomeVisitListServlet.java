package com.kh.homeVisit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.PageInfo;
import com.kh.homeVisit.model.service.HomeVisitService;
import com.kh.homeVisit.model.vo.HomeVisit;

/**
 * Servlet implementation class AdminHomeVisitListServlet
 */
@WebServlet("/adminList.ho")
public class AdminHomeVisitListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHomeVisitListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount;   // 현재 총 게시글 갯수
		int currentPage; // 현재 페이지(요청한 페이지)
		int pageLimit;   // 페이지 하단에 보여질 페이징바 최대갯수
		int boardLimit;  // 한 페이지 내 보여질 게시길 최대 갯수
		
		int maxPage;     // 가장 마지막 페이지
		int startPage; 
		int endPage;
		
		listCount = new HomeVisitService().selectListCount();
		currentPage=Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 10;
		boardLimit = 10;
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
	
		startPage = (currentPage - 1 ) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		System.out.println(pi);
		
		ArrayList<HomeVisit> list = new HomeVisitService().selectList(pi);
		
		for(HomeVisit h : list) {
			System.out.println(h);
		}

		System.out.println("=========================");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
