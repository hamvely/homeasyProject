package com.kh.homeVisit.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.homeVisit.model.service.HomeVisitService;
import com.kh.homeVisit.model.vo.HomeVisit;
import com.kh.qna.model.vo.Attachment;

/**
 * Servlet implementation class HomeVisitPostServlet
 */
@WebServlet("/detail.ho")
public class HomeVisitPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeVisitPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int postNo = Integer.parseInt(request.getParameter("pno"));
		
		int result = new HomeVisitService().increaseCount(postNo);
		
		if(result>0) {
			
			HomeVisit h = new HomeVisitService().selectHomeVisit(postNo);
			ArrayList<Attachment> list = new HomeVisitService().selectAttachment(postNo);
		
			request.setAttribute("h", h);
			request.setAttribute("list", list);
			//System.out.println(h);
			//System.out.println(at);
		
			request.getRequestDispatcher("views/homeVisit/homeVisitPost.jsp").forward(request, response);
			
		}else {
			
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
