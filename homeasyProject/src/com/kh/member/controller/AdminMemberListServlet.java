package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class AdminMemberListServlet
 */
@WebServlet("/list.me")
public class AdminMemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    /* 작성자 임지우 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount;		// 현재 멤버 총 갯수
		int currentPage;	// 현재 페이지 (요청한 페이지)
		int pageLimit;		// 한페이지 하단에 보여질 페이징바 최대갯수(10개단위)
		int memberLimit;	// 한페이지내 보여질 멤버리스트 최대갯수(10개단위)
		
		int maxPage;		// 전체페이지들 중에서의 가장 마지막페이지 (listCount, memberLimit를 가지고 구할것)
		int startPage;		// 현재페이지에 하단에 보여질 페이징바의 시작수 (currentPage, pageLimit를 가지고 구할것)
		int endPage;		// 현재페이지에 하단에 보여질 페이징바의 끝 수 (startPage, pageLimit, maxPage를 가지고 구할것)
		
		listCount = new MemberService().selectListCount();
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		pageLimit = 10;
		memberLimit = 10;
		maxPage = (int)Math.ceil((double)listCount / memberLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if(endPage > maxPage){
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, memberLimit, maxPage, startPage, endPage);
		
		System.out.println(pi);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
