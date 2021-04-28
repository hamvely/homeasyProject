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
 * Servlet implementation class TotalPriceServlet
 */
@WebServlet("/totalPrice.st")
public class TotalPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TotalPriceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int optionNo = Integer.parseInt(request.getParameter("optionNo"));
		System.out.println(optionNo);
		
		Product tp = new StoreService().totalPrice(optionNo);
		request.setAttribute("p", tp);
		
		System.out.println(tp.getOptionPrice() + tp.getProductPrice());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
