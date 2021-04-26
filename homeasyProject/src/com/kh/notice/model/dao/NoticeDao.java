package com.kh.notice.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

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

	public ArrayList<Notice> selectNoticeList(Connection conn) {
		
		// select문 => ResultSet객체 (여러행)
				ArrayList<Notice> list = new ArrayList<>();
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				
				String sql = prop.getProperty("selectNoticeList");
				
				try {
					pstmt = conn.prepareStatement(sql); // 애초에 완성된 sql문
					rset = pstmt.executeQuery();
					
					while(rset.next()) {
						
						list.add(new Notice(rset.getString("NO_TITLE"),
											rset.getDate("NO_CREATE_DATE")));
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
				
				return list;
				
			}

	/* 공지사항 리스트조회(관리자)*/
	public ArrayList<Notice> selectNoticeListAdmin(Connection conn) {

		ArrayList<Notice> adminList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNoticeListAdmin");
		
		try {
			pstmt = conn.prepareStatement(sql); 
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				adminList.add(new Notice(rset.getInt("NO_NO"),
										 rset.getString("NO_TITLE"),
										 rset.getInt("NO_COUNT"),
										 rset.getDate("NO_CREATE_DATE"),
										 rset.getString("NO_STATUS")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return adminList;
	
	
	}

	/* 공지사항 작성(관리자) */
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
	
	/* 조회수 증가 */
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

	public Notice selectNotice(Connection conn, int noticeNo) {
		
		//System.out.println(noticeNo);
		
		// select문 => ResultSet객체 (한행)
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNoticeDetail");
		
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
				
}
