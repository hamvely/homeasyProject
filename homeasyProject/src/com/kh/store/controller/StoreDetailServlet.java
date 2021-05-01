package com.kh.store.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductFile;
import com.kh.product.model.vo.ProductOption;
import com.kh.store.model.service.StoreService;

/**
 * Servlet implementation class StoreDetailServlet
 */
@WebServlet("/detail.st")
public class StoreDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productNo = Integer.parseInt(request.getParameter("pno"));
		// 상품 정보 조회, 상품에 등록된 첨부파일들 조회
		Product p = new StoreService().selectStore(productNo);
		ArrayList<ProductFile> list = new StoreService().selectProductFileList(productNo);
		ArrayList<ProductOption> optionList = new StoreService().selectProductOptionList(productNo);
		
		System.out.println(p);
		System.out.println(list);
		System.out.println(optionList);
		
		request.setAttribute("p", p);
		request.setAttribute("list", list);
		request.setAttribute("optionList", optionList);
		
		request.getRequestDispatcher("views/store/storeDetailView.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
