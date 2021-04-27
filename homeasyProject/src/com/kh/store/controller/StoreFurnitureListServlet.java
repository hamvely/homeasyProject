package com.kh.store.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductCate;
import com.kh.store.model.service.StoreService;

/**
 * Servlet implementation class StoreListServlet
 */
@WebServlet("/funitureList.st")
public class StoreFurnitureListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreFurnitureListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int cate2No = Integer.parseInt(request.getParameter("cate2No"));
		//System.out.println(cate2No);
		ArrayList<Product> list = new StoreService().selectFurnitureList(cate2No);
		ArrayList<ProductCate> cateList = new StoreService().furnitureCate();
		
		request.setAttribute("list", list);
		request.setAttribute("cateList", cateList);
		
		request.getRequestDispatcher("views/store/storeListView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
