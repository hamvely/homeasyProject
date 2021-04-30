package com.kh.review.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.order.model.vo.Order;
import com.kh.review.model.service.ReviewService;
import com.kh.review.model.vo.Review;

/**
 * Servlet implementation class ReviewInsertServlet
 */
@WebServlet("/Review.In")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 request.setCharacterEncoding("utf-8");
		 
		 String recontent = request.getParameter("content");
		 
		 HttpSession session = request.getSession();
		 Member loginUser = (Member)session.getAttribute("loginUser");
		 int userNo = loginUser.getUserNo();
		 
		 //int productNo = Integer.parseInt(request.getParameter("productNo"));
		 
		 Review r = new Review();
		 r.setProductNo(productNo);
		 r.setUserNo(userNo);
		 r.setReContent(recontent);
		 
		 int result = new ReviewService().insertReview(r);
		 
		 if(result > 0) { 
			 
			 session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
			 response.sendRedirect(request.getContextPath()+"/Order.li");
		 }else {
			 request.setAttribute("errorMsg", "공지사항 등록실패");
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
