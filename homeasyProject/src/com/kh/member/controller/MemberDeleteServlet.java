package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class MemberDeleteServlet
 */
@WebServlet("/delete.me")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nickName = request.getParameter("nickName");
		String userPwd = request.getParameter("userPwd");
	

		int result = new MemberService().deleteMember(nickName, userPwd);
		
		if(result > 0) { 
			
			HttpSession session = request.getSession();
			session.removeAttribute("loginUser");
			session.setAttribute("alertMsg", "탈퇴되었습니다. 그동안 이용해주셔서 감사합니다.");
			
			response.sendRedirect(request.getContextPath());
			
		}else { 
			
			request.getSession().setAttribute("alertMsg", "회원 탈퇴 실패");
			response.sendRedirect(request.getContextPath() + "/withdrawal.me");
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
