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
			// enctype이 multipart/form-data로 잘 전송될 경우
			// 1_1. 용량제한
			int maxSize = 10 * 1024 * 1024;
			// 1_2. 저장할 폴더의 물리적인 경로
			String savePath = request.getSession().getServletContext().getRealPath("/resources/product_upfiles/");
			// 2. request => multiRequest
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			// 3. DB에 기록할 요청시 전달된 값 뽑기
			// 3_1. Product(원래는 board)테이블에 insert할 데이터 뽑기
			Product p = new Product();
			p.setProductStatus(multiRequest.getParameter("product_status"));
			p.setCate2No(multiRequest.getParameter("category2"));
			p.setProductName(multiRequest.getParameter("product_name"));
			p.setProductPrice(multiRequest.getParameter("product_price"));
			p.setOptionPrice(multiRequest.getParameter("option_price"));
			p.setOptionStock(multiRequest.getParameter("option_stock"));
			p.setProductBrand(multiRequest.getParameter("product_brand"));
			
			// 3_2. ProductFile(Attachment)테이블에 insert할 데이터 뽑기 => ProductFile객체
			// 단, 여러개의 첨부파일이이 있을거기때문에 해당 ProductFile객체들을 arraylist에 담을것
			ArrayList<ProductFile> list = new ArrayList<>();
			
			for(int i=1; i<=2; i++) {
				
				String key="file" + i;
				if(multiRequest.getOriginalFileName(key) != null) {
					// productfile객체 생성 + 원본명,수정명,폴더경로,파일레벨(0/1)
					ProductFile pf = new ProductFile();
					pf.setProductFileOname(multiRequest.getOriginalFileName(key)); // 상품 첨부파일 원본명
					pf.setProductFileRename(multiRequest.getFilesystemName(key)); // 상품 첨부파일 경로(??)+수정명
					
					if(i == 1) { // 대표이미지 (썸네일 기능쓰려면 fileLevel 있어야할듯한데)
						pf.setFileLevel(0);
					}else { // 상세이미지
						pf.setFileLevel(1);
					}
					
					// list에 추가
					list.add(pf);					
				}				
			}
			
			// 4. 사진게시판 작성용 서비스 호출 & 결과 돌려받기 (board객체, list돌려줄것)
			int result = new ProductService().insertProduct(p, list);
			
			if(result > 0) { // 성공 => adminlist.pd url재요청 => 상품리스트페이지
				request.getSession().setAttribute("alertMsg", "상품등록에 성공하였습니다.");
				response.sendRedirect(request.getContextPath() + "/adminlist.pd");
			}else { // 실패 => 에러문구담아서 에러페이지로 포워딩
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
