package com.kh.knowHow.model.dao;

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
import com.kh.knowHow.model.vo.KnowHow;

public class KnowHowDao {

	private Properties prop = new Properties();
	
	public KnowHowDao() {
		
		String fileName = KnowHowDao.class.getResource("/sql/knowHow/knowHow-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<KnowHow> selectKnowHowList(Connection conn){
		
		ArrayList<KnowHow> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectKnowHowList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new KnowHow(rset.getString("post_title"),
									 rset.getString("post_content"),
									 rset.getString("post_file_rename")));
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	
	public KnowHow selectKnowHow(Connection conn) {
		
		KnowHow k = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectKnowHow");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
			   k = new KnowHow(rset.getString("post_title"),
								rset.getString("name"),
								rset.getString("post_file_renmae"),
								rset.getString("post_content"),
								rset.getString("pcom_content"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return k;
	}
	
	// 작성자:임지우 - 노하우관리 리스트카운트 조회
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
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
		
	}
	
	// 작성자:임지우 - 노하우관리 리스트조회
	public ArrayList<KnowHow> selectList(Connection conn, PageInfo pi) {
		
		ArrayList<KnowHow> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new KnowHow(rset.getInt("postNo"),
								     rset.getString("postTitle"),
								     rset.getDate("postUpdateDate"),
								     rset.getInt("postCount"),
								     rset.getString("postStatus")));
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


