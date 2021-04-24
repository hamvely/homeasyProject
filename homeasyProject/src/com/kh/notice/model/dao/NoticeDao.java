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

}
