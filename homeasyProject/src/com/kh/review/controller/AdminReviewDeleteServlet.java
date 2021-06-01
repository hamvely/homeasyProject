package com.kh.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.review.model.service.ReviewService;

/**
 * Servlet implementation class AdminReviewDeleteServlet
 */
@WebServlet("/adminDelete.re")
public class AdminReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminReviewDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int reNo = Integer.parseInt(request.getParameter("rno"));
		
		int result = new ReviewService().deleteNotice(reNo);
		
		if(result > 0) {
			
			request.getSession().setAttribute("alertMsg", "성공적으로 리뷰가 삭제되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminlist.re?currentPage=1");
			
		}else {
			
			request.setAttribute("errorMsg", "리뷰 삭제에 실패하였습니다.");
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
