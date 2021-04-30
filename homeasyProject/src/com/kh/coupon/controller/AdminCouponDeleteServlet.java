package com.kh.coupon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.coupon.model.service.CouponService;
import com.kh.coupon.model.vo.Coupon;
import com.kh.review.model.service.ReviewService;

/**
 * Servlet implementation class AdminCouponDeleteServlet
 */
@WebServlet("/adminDelete.co")
public class AdminCouponDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCouponDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cp_no = Integer.parseInt(request.getParameter("cno"));
		
		int result = new ReviewService().deleteNotice(cp_no);
		
		if(result > 0) { // adminlist.co 재요청 => 리뷰리스트페이지
			
			request.getSession().setAttribute("alertMsg", "성공적으로 쿠폰이 삭제되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminlist.co?currentPage=1");
			
		}else {
			
			request.setAttribute("errorMsg", "쿠폰 삭제에 실패하였습니다.");
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
