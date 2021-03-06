package com.kh.notice.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.vo.Notice;

import static com.kh.common.JDBCTemplate.*;

public class NoticeDao {
	
private Properties prop = new Properties();
	
	public NoticeDao() {
		
		String fileName = NoticeDao.class.getResource("/sql/notice/notice-mapper.xml").getPath();
				
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/* 공지사항 리스트조회(사용자)*/
	public ArrayList<Notice> selectList(Connection conn, PageInfo pi) {

		ArrayList<Notice> list = new ArrayList<> ();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {list.add(new Notice(rset.getInt("NO_NO"),
													rset.getString("NO_TITLE"),
													rset.getDate("NO_CREATE_DATE")));
				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(rset);
				close(pstmt);
			}
			
			return list;
	
			}

	

	/* 공지사항 리스트조회(관리자)*/
	public ArrayList<Notice> selectListAdmin(Connection conn, PageInfo pi) {
		ArrayList<Notice> list = new ArrayList<> ();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListAdmin");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Notice(rset.getInt("NO_NO"),
								    rset.getString("NO_TITLE"),
								    rset.getInt("NO_COUNT"),
							 	    rset.getDate("NO_CREATE_DATE"),
								    rset.getString("NO_STATUS")));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(rset);
				close(pstmt);
			}
			
			return list;
		}
	
	/* 공지사항 게시글 갯수(사용자) */
	public int selectListCount(Connection conn) {
		
		// select문 => ResultSet객체 (총게시글갯수 == 정수)
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
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	/* 공지사항 게시글 갯수(관리자) */
	public int selectListCountAdmin(Connection conn) {

		// select문 => ResultSet객체 (총게시글갯수 == 정수)
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCountAdmin");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNTADMIN");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;

	}
	
	/* 공지사항 상세(관리자) */
	public Notice selectNoticeAdmin(Connection conn, int noticeNo) {
		
		//System.out.println(noticeNo);
		
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDetailAdmin");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice(rset.getInt("NO_NO"),
							   rset.getString("NO_TITLE"),
							   rset.getString("NO_CONTENT"),
							   rset.getDate("NO_CREATE_DATE"),
							   rset.getString("NO_STATUS"));
			}
			
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return n;
		}
	
	/* 공지사항 상세(사용자) */
	public Notice selectNotice(Connection conn, int noticeNo) {
		
		//System.out.println(noticeNo);
		
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice(rset.getInt("NO_NO"),
							   rset.getString("NO_TITLE"),
							   rset.getString("NO_CONTENT"),
							   rset.getDate("NO_CREATE_DATE"),
							   rset.getInt("NO_COUNT"));  
			}
			
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return n;
		}

	
	
	
	
	/* 공지사항 작성 */
	public int insertNotice(Connection conn, Notice n) {

		//System.out.println(n);
		// insert문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertNotice");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql
			pstmt.setString(1, n.getNoticeTitle());
			pstmt.setString(2, n.getNoticeContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	/* 공지사항 삭제 */
	public int deleteNotice(Connection conn, int noticeNo) {
		
		System.out.println(noticeNo);
		
		// update문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/* 공지사항 수정 */
	public int updateNotice(Connection conn, Notice n) {
		
		//System.out.println(n);			
		
		// update문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateNotice");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된sql
			pstmt.setString(1, n.getNoticeTitle());
			pstmt.setDate(2, n.getCreateDate());
			pstmt.setString(3, n.getNoticeContent());
			//pstmt.setString(4, n.getStatus());
			pstmt.setInt(4, n.getNoticeNo());
			
			result = pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/* 공지사항 조회수  */
	
	/* 공지사항 조회수  */
	public int increaseCount(Connection conn, int noticeNo) {
		
		// update문 => 처리된 행수
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;

	}

	

	
				
				
	/* 작성자 : 장아영 */
	/* 관리자 메인화면 박스 공지사항 리스트 */
	public ArrayList<Notice> selectNoticeListAdmin(Connection conn) {

		ArrayList<Notice> adminList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNoticeListAdminMain");
		
		try {
			pstmt = conn.prepareStatement(sql); 
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				adminList.add(new Notice(rset.getInt("NO_NO"),
										 rset.getString("NO_TITLE"),
										 rset.getDate("NO_CREATE_DATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return adminList;
		}

	

	
				
}
