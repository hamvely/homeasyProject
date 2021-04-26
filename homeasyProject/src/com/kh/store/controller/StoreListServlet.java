package com.kh.store.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductCate1;
import com.kh.product.model.vo.ProductCate2;
import com.kh.store.model.service.StoreService;

/**
 * Servlet implementation class StoreListServlet
 */
@WebServlet("/list.st")
public class StoreListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<Product> list = new StoreService().selectStoreList();
		//ArrayList<ProductCate1> cate1List = new StoreService().selectProductCate1List();
		//ArrayList<ProductCate2> cate2List = new StoreService().selectProductCate2List();
		
		request.setAttribute("list", list);
		//request.setAttribute("cate1List", cate1List);
		//request.setAttribute("cate2List", cate2List);
		
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
