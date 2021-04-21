package com.kh.member.model.service;

import java.sql.Connection;

import static com.kh.common.JDBCTemplate.*;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

/* 작성자 : 김혜미 */
public class MemberService {

	public Member loginMember(String email, String userPwd) {

	Connection conn = getConnection();
	
	Member loginMember = new MemberDao().loginMember(conn, email, userPwd);

	close(conn);
	
	return loginMember;
	
	}

	
	
	
}
