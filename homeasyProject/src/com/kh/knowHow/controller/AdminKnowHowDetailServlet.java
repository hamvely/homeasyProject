package com.kh.knowHow.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.knowHow.model.service.KnowHowService;
import com.kh.knowHow.model.vo.KnowHow;
import com.kh.knowHow.model.vo.KnowHowFile;

/**
 * Servlet implementation class AdminKnowHowDetailServlet
 */
@WebServlet("/adminDetail.kh")
public class AdminKnowHowDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminKnowHowDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postNo = Integer.parseInt(request.getParameter("pno"));
		
		// 조회수증가 / 게시글조회(KnowHow) / 첨부파일조회(KnowHowFile)
		int result = new KnowHowService().increaseCount(postNo);
		
		if(result > 0) {
			
			KnowHow k = new KnowHowService().selectKnowHow(postNo);
			KnowHowFile kf = new KnowHowService().selectKnowHowFile(postNo);
			
			System.out.println(k);
			System.out.println(kf);
			
			request.setAttribute("k", k);
			request.setAttribute("kf", kf);
			
			request.getRequestDispatcher("views/knowHow/adminKnowHowDetailView.jsp").forward(request, response);
			
		}else {
			request.setAttribute("errorMsg", "노하우 조회에 실패하였습니다.");
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
