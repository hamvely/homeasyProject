package com.kh.knowHow.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.knowHow.model.service.KnowHowService;
import com.kh.knowHow.model.vo.KnowHow;
import com.kh.qna.model.vo.Attachment;

/**
 * Servlet implementation class knowHowPostServlet
 */
@WebServlet("/detail.kn")
public class knowHowPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public knowHowPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int postNo = Integer.parseInt(request.getParameter("kno"));
		
		int result = new KnowHowService().increaseCount(postNo);
		
		if(result>0) {
			
			KnowHow k = new KnowHowService().selectKnowHowPost(postNo);
			ArrayList<Attachment> list = new KnowHowService().selectAttachment(postNo);
		
			request.setAttribute("k", k);
			request.setAttribute("list", list);
		
			
			request.getRequestDispatcher("views/knowHow/KnowHowPost.jsp").forward(request, response);
			
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
