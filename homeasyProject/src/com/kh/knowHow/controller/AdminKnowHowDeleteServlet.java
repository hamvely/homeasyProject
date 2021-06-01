package com.kh.knowHow.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.knowHow.model.service.KnowHowService;

/**
 * Servlet implementation class AdminKnowHowDeleteServlet
 */
@WebServlet("/adminDelete.kh")
public class AdminKnowHowDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminKnowHowDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int postNo = Integer.parseInt(request.getParameter("pno"));
		
		int result = new KnowHowService().deleteKnowHow(postNo);
		
		if(result > 0) {
			
			request.getSession().setAttribute("alertMsg", "성공적으로 노하우가 삭제되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminlist.kh?currentPage=1");
			
		}else {
			
			request.setAttribute("errorMsg", "노하우 삭제에 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
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
