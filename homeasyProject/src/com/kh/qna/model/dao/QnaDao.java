package com.kh.qna.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.common.model.vo.PageInfo;
import com.kh.qna.model.vo.Attachment;
import com.kh.qna.model.vo.Qna;

public class QnaDao {

	private Properties prop = new Properties();
	
	public QnaDao() {
		
		String fileName = QnaDao.class.getResource("/sql/qna/qna-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Qna> selectQnaList(Connection conn){
		
		ArrayList<Qna> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectQnaList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
			list.add(new Qna (rset.getString("post_title"),
							  rset.getString("post_content"),
			                  rset.getString("post_file_rename"),
			                  rset.getString("user_file_rename"),
			                  rset.getString("nickname")));
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int insertQnWrite(Connection conn, Qna q) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertQnWrite");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, q.getPostCateName());
			pstmt.setString(2, q.getPostTitle());
			pstmt.setString(4, q.getPostContent());
			pstmt.setInt(5, Integer.parseInt(q.getUserNo()));
			pstmt.setDate(6, q.getPostCreateDate());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertAttachmentList(Connection conn, ArrayList<Attachment> list) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachmentList");
		
		try {
			
			for(Attachment at : list){
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, at.getPostFileRename());
				
				result = pstmt.executeUpdate();
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int selectListCount(Connection conn) { // 관리자 qna 리스트 카운트
		
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
	
	public ArrayList<Qna> selectList(Connection conn, PageInfo pi){
		ArrayList<Qna> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (pi.getCurrentPage() -1 ) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Qna(rset.getInt("post_no"),
						         rset.getString("eamil"),
						         rset.getString("post_title"),
						         rset.getDate("post_create_date"),
						         rset.getInt("post_count")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
}
