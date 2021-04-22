package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.vo.Member;

/* 작성자 : 김혜미 */
public class MemberDao {
	
	private Properties prop = new Properties();
	
	
	/* 작성자 : 김혜미 */
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	/* 작성자 : 김혜미 */
	public Member loginMember(Connection conn, String email, String userPwd) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember"); 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("USER_NO"),
							   rset.getString("EMAIL"),
							   rset.getString("PWD"),
							   rset.getString("NAME"),
							   rset.getString("NICKNAME"),
							   rset.getString("GENDER"),
							   rset.getString("USER_FILE_RENAME"),
							   rset.getString("BIRTH"),
							   rset.getInt("POST_CODE"),
							   rset.getString("ADDRESS"),
							   rset.getString("PHONE"),
							   rset.getDate("JOIN_DATE"),
							   rset.getString("USER_STATUS"),
							   rset.getString("ADMIN"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
		
	}
	
	
	/* 작성자 : 김혜미 */
	public int insertMember(Connection conn, Member m) {
	      // insert문 => 처리된행수
	      int result = 0;
	      PreparedStatement pstmt = null;
	      String sql = prop.getProperty("insertMember");
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, m.getEmail());
	         pstmt.setString(2, m.getUserPwd());
	         pstmt.setString(3, m.getUserName());
	         pstmt.setString(4, m.getNickName());
	         
	         result = pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	      }
	      
	      return result;
	   }

	
	
	
	
	/* ----- 작성자 : 임지우 ----- */
	public int selectListCount(Connection conn) {

		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
		
	}
	
	

	
	
}
