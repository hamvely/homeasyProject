package com.kh.inquire.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.PageInfo;
import com.kh.inquire.model.service.AdminInquireService;
import com.kh.inquire.model.vo.AdminInquire;


/**
 * Servlet implementation class adminInquireServlet
 */
@WebServlet("/adminInquire.one")
public class AdminInquireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInquireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 페이징 처리 
		
		int listCount; // 현재 총 게시글 갯수
		int currentPage; //현재 페이지 
		int pageLimit; //한 페이지 하단에 보여질 페이지 갯수 
		int boardLimit; // 한 페이지 내에 보여지는 글 갯수 
		
		int maxPage; //전체 페이지중 마지막페이지
		int startPage; // 전체 페이지중 시작 수 
		int endPage; //끝페이지 	
		
		
		
		// listCount : 총 게시글 갯수 조회해서 담기 
		listCount = new AdminInquireService().selectCount();
		
		// currentPage : 현재 요청한 페이지 
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		
		// pageLimit : 하단 페이지 최대 갯수
		pageLimit = 10;
		
		// AdminInquire : 한 페이지에 보여질 갯수
		boardLimit = 10;
		
		// maxPage : 마지막 페이지 수 
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		// startPage : 시작 페이지
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		// endPage : 페이징바 끝 수 
		endPage = startPage + pageLimit - 1;
		
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		
		// 페이징 정보 담기  
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		// 현재 요청한 페이지 
		ArrayList<AdminInquire> list = new AdminInquireService().inqruireList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/inquire/adminInquire.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
