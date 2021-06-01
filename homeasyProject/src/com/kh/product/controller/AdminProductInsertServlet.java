package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductFile;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminProductInsertServlet
 */
@WebServlet("/adminInsert.pd")
public class AdminProductInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {

			int maxSize = 10 * 1024 * 1024;

			String savePath = request.getSession().getServletContext().getRealPath("/resources/product_upfiles/");

			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());

			Product p = new Product();
			p.setProductStatus(multiRequest.getParameter("product_status"));
			p.setCate2No(multiRequest.getParameter("category2"));
			p.setProductName(multiRequest.getParameter("product_name"));
			p.setProductPrice(multiRequest.getParameter("product_price"));
			p.setOptionPrice(multiRequest.getParameter("option_price"));
			p.setOptionStock(multiRequest.getParameter("option_stock"));
			p.setProductBrand(multiRequest.getParameter("product_brand"));

			ArrayList<ProductFile> list = new ArrayList<>();
			
			for(int i=1; i<=2; i++) {
				
				String key="file" + i;
				if(multiRequest.getOriginalFileName(key) != null) {

					ProductFile pf = new ProductFile();
					pf.setProductFileOname(multiRequest.getOriginalFileName(key));
					pf.setProductFileRename(multiRequest.getFilesystemName(key));
					
					if(i == 1) {
						pf.setFileLevel(0);
					}else { // 상세이미지
						pf.setFileLevel(1);
					}
					
					list.add(pf);					
				}				
			}
			
			int result = new ProductService().insertProduct(p, list);
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "상품등록에 성공하였습니다.");
				response.sendRedirect(request.getContextPath() + "/adminlist.pd");
			}else {
				request.setAttribute("errorMsg", "상품등록에 실패하였습니다.");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
			
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
