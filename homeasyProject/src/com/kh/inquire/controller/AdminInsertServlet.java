package com.kh.inquire.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.inquire.model.service.AdminInquireService;
import com.kh.inquire.model.vo.AdminInquire;

/**
 * Servlet implementation class AdminInsertServlet
 */
@WebServlet("/adminInsert.in")
public class AdminInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String inqAnswer = request.getParameter("answer");
		
		HttpSession session = request.getSession();
		AdminInquire userNo = (AdminInquire)session.getAttribute("inqNo");
		int inqNo = userNo.getInqNo();
		
		AdminInquire i = new AdminInquire();
		i.setInqAnswer(inqAnswer);
		i.setInqNo(inqNo);
		
		int result = new AdminInquireService().insertInquire(i);	
		
		if(result > 0) { 
			session.setAttribute("alerMsg", "성공적으로 공지사항 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminInsert.in");
		}else { 
			request.setAttribute("errorMsg", "공지사항 등록 실패");
			request.getRequestDispatcher("views/common/errorPage").forward(request, response);
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
