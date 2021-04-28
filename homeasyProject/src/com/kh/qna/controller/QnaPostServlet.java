package com.kh.qna.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.homeVisit.model.service.HomeVisitService;
import com.kh.homeVisit.model.vo.HomeVisit;
import com.kh.qna.model.vo.Attachment;

/**
 * Servlet implementation class QnaPostServlet
 */
@WebServlet("/post.qna")
public class QnaPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postNo = Integer.parseInt(request.getParameter("pno"));
		
		int result = new QnaService().increaseCount(postNo);
		
		if(result>0) {
			
			Qna q = new QnaService().selectQna(postNo);
			Attachment at = new QnaService().selectAttachment(postNo);
		
			request.getRequestDispatcher("views/qna/qnaPost.jsp").forward(request, response);
			
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
