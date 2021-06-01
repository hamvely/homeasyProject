package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.vo.Member;

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
	
	/* 작성자 : 김혜미 */
	public int deleteMember(Connection conn, String nickName, String userPwd) {


		System.out.println(nickName);
		System.out.println(userPwd);

		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nickName);
			pstmt.setString(2, userPwd);
			
			
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
	
	/* ----- 작성자 : 임지우 ----- */
	public ArrayList<Member> selectList(Connection conn, PageInfo pi) {
		ArrayList<Member> list = new ArrayList<> ();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("user_no"),
								   rset.getString("email"),
								   rset.getString("name"),
								   rset.getString("nickname"),
								   rset.getString("gender"),
								   rset.getString("birth"),
								   rset.getInt("post_code"),
								   rset.getString("address"),
								   rset.getString("phone"),
								   rset.getDate("join_date"),
								   rset.getString("user_status"),
								   rset.getString("admin")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}

	public int idCheck(Connection conn, String checkId) {
		
		// select문 => ResultSet(한개값)
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
	
	}
	
	public Member selectMember(Connection conn, int userNo) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("USER_NO"),
							   rset.getString("EMAIL"),
							   rset.getString("NAME"),
							   rset.getString("NICKNAME"),
							   rset.getString("GENDER"),
							   rset.getString("BIRTH"),
							   rset.getInt("POST_CODE"),
							   rset.getString("ADDRESS"),
							   rset.getString("PHONE"),
							   rset.getDate("JOIN_DATE"),
							   rset.getString("USER_STATUS"),
							   rset.getString("ADMIN")							   
							  );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;	
		
	}

	public int updateMember(Connection conn, Member m) {
		
		
		System.out.println(m);
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getNickName());
			pstmt.setString(2, m.getPhone());
			pstmt.setString(3, m.getBirth());
			pstmt.setString(4, m.getEmail());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	
	}

	public Member selectMem(Connection conn, String email) {
				Member m = null;
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				
				String sql = prop.getProperty("selectMem");
				
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, email);
					
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
	
	
}
