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
 * Servlet implementation class SortedStoreServlet
 */
@WebServlet("/sortedList.st")
public class SortedStoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SortedStoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cate1No = Integer.parseInt(request.getParameter("cate1No"));
		int cate2No = Integer.parseInt(request.getParameter("cate2No"));

		ArrayList<Product> cList = new StoreService().selectcList(cate1No, cate2No);
		request.setAttribute("cList", cList);
		
		ArrayList<ProductCate> cate2List = new StoreService().selectCate2List(cate1No);
		request.setAttribute("cate2List", cate2List);
		
		request.getRequestDispatcher("views/store/sortedStoreListView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
