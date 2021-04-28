package com.kh.coupon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.coupon.model.service.CouponService;
import com.kh.coupon.model.vo.Coupon;

/**
 * Servlet implementation class AdminCouponInsertServlet
 */
@WebServlet("/adminInsert.cp")
public class AdminCouponInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCouponInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String couponName = request.getParameter("cp_name"); // couponName 변수에 엔롤폼 인풋 name에 지정한 cp_name 기록
		String couponPrice = request.getParameter("cp_price");
		String couponCondition = request.getParameter("cp_condition");
		String couponLimit = request.getParameter("cp_limit");
		String couponMemo = request.getParameter("cp_memo");
		
		Coupon c = new Coupon();
		c.setCp_name(couponName); // coupon.vo클래스 변수에 담기
		c.setCp_price(Integer.parseInt(couponPrice)); // 자료형int에 String담을거라 파싱
		c.setCp_condition(Integer.parseInt(couponCondition));
		c.setCp_limit(Integer.parseInt(couponLimit));
		c.setCp_memo(couponMemo);
		
		int result = new CouponService().insertCoupon(c);
		
		if(result > 0) {
			
			//session.setAttribute("alertMsg", "성공적으로 쿠폰 등록되었습니다."); 세션오류
			response.sendRedirect(request.getContextPath() + "/adminlist.co?currentPage=1");
			
		}else {
			request.setAttribute("errorMsg", "쿠폰 등록 실패");
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
