package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/update.me")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 인코딩
		request.setCharacterEncoding("utf-8");
		
		// 2. 전달값 뽑아서 변수 및 객체 담기
		
		String email = request.getParameter("userEmail");
		String userName = request.getParameter("userName");
		String nickname = request.getParameter("nickName");
		String phone = request.getParameter("phone");
		String birth = request.getParameter("birth");
		
		Member m = new Member(email, userName, nickname, phone, birth);
		
		// 3. 요청처리를 위한 Service 메소드 호출 및 결과 돌려받기
		Member updateMem = new MemberService().updateMember(m);
		
		// 4. 돌려받은 결과를 가지고 사용자가 보게될 페이지 지정
		if(updateMem == null) { // 실패 => errorPage로 응답
			
			request.setAttribute("errorMsg", "회원정보 수정에 실패했습니다.");
			
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			view.forward(request, response);
			
		}else { // 성공 => 마이페이지 다시 보여지게 alert "성공적으로 회원정보를 수정했습니다."
			
			// session에 담겨있는 loginUser 갱신
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", updateMem);
			session.setAttribute("alertMsg", "성공적으로 회원정보를 수정했습니다.");
			
			// > forwarding 방식   : 뷰가 선택되서 보여지는 것 뿐 url이 변경되지 않음(현재 이서블릿의 매핑값이 남아잇음)
			// > sendRedirect방식 : url 재요청하는 방식 (** 해당 이페이지를 응답해주는 url이 존재할 경우)
			response.sendRedirect(request.getContextPath() + "/modification.me");
			
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
