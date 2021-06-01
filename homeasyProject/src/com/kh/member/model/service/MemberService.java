package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;


public class MemberService {
	
	/* 작성자 : 김혜미 */
	public Member loginMember(String email, String userPwd) {

	Connection conn = getConnection();
	
	Member loginMember = new MemberDao().loginMember(conn, email, userPwd);

	close(conn);
	
	return loginMember;
	
	}
	
	
	/* 작성자 : 김혜미 */
	public int insertMember(Member m) {
	      
	      Connection conn = getConnection();
	      int result = new MemberDao().insertMember(conn, m);
	      
	      if(result > 0) {
	         commit(conn);
	      }else {
	         rollback(conn);
	      }
	      
	      close(conn);
	      return result;
	}
	
	public int deleteMember(String nickName, String userPwd) {
		Connection conn = getConnection();
		
		int result = new MemberDao().deleteMember(conn, nickName, userPwd);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	/* ----- 작성자 : 임지우 ----- */
	public int selectListCount() {
		
		Connection conn = getConnection();
		int listCount = new MemberDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	/* ----- 작성자 : 임지우 ----- */
	public ArrayList<Member> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		ArrayList<Member> list = new MemberDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
	}

	public int idCheck(String checkId) {
		Connection conn = getConnection();
		int count = new MemberDao().idCheck(conn, checkId);
		close(conn);
		return count;
	}
	
	public Member selectMember(int userNo) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().selectMember(conn, userNo);
		
		close(conn);
		return m;
		
	}


	public Member updateMember(Member m) {

		Connection conn = getConnection();
		int result = new MemberDao().updateMember(conn, m);
		
		Member updateMem = null;
		if(result > 0) { // update 성공 했을 경우 => 갱신된 회원 객체 다시 조회해야됨
			commit(conn);
			
			updateMem = new MemberDao().selectMem(conn, m.getEmail());
			
		}else { // update 실패 했을 경우
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
	}


	
	
	
}
