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

/**
 * Servlet implementation class AdminHomeVisitSevlet
 */
@WebServlet("/adminList.home")
public class AdminHomeVisitSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHomeVisitSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<HomeVisit> list = new HomeVisitService().adminHomeVisitList();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/homeVisit/adminHomeVisit.jsp").forward(request, response);

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
