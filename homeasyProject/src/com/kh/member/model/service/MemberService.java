package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

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
	
	/* ----- 작성자 : 임지우 ----- */
	public int selectListCount() {
		
		Connection conn = getConnection();
		int listCount = new MemberDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}

	
	
	
}
