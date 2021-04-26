package com.kh.store.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.vo.Product;
import com.kh.store.model.service.StoreService;

/**
 * Servlet implementation class TotalPriceAjax
 */
@WebServlet("/totalPrice.st")
public class TotalPriceAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TotalPriceAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int selectOptionNo = Integer.parseInt(request.getParameter("selectOptionNo"));
		System.out.println(selectOptionNo);
		
		Product tp = new StoreService().totalPrice(selectOptionNo);
		
		response.getWriter().print(tp.getProductPrice()+tp.getOptionPrice());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
