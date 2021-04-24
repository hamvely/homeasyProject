package com.kh.homeVisit.model.dao;

import static com.kh.common.JDBCTemplate.*;


import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Properties;

import com.kh.homeVisit.model.vo.HomeVisit;
import com.kh.qna.model.vo.Qna;


public class HomeVisitDao {
	
	private Properties prop = new Properties();
	
	public HomeVisitDao() {
		
		String fileName = HomeVisitDao.class.getResource("/sql/homeVisit/homeVisit-mapper.xml").getPath();
	
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<HomeVisit> selectHomeVisit(Connection conn){
		
		ArrayList<HomeVisit> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectHomeVisit");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new HomeVisit(rset.getString("user_file_rename"),
						               rset.getString("nickname"),
						               rset.getString("post_file_rename"),
						               rset.getString("post_content"),
						               rset.getString("pcom_content")));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}


	public ArrayList<HomeVisit> adminHomeVisitList(Connection conn){
		
		ArrayList<HomeVisit> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("adminHomeVisitList");
		
		try {
			pstmt=conn.prepareStatement(sql);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
			list.add(new HomeVisit (rset.getString("post_no"),
									  rset.getString("email"),
					                  rset.getString("post_title"),
					                  rset.getString("post_create_date"),
					                  rset.getString("post_count")));
			
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
