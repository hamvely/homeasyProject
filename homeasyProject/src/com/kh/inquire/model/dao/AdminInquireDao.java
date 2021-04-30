package com.kh.inquire.model.dao;

import static com.kh.common.JDBCTemplate.*;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.inquire.model.vo.AdminInquire;



public class AdminInquireDao {
	
	private Properties prop = new Properties();
		
	public AdminInquireDao() {
		
		
		
		String fileName = AdminInquireDao.class.getResource("/sql/inquire/AdminInquire-mapper.xml").getPath();
		
			try {
				prop.loadFromXML(new FileInputStream(fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	
	
	//페이징 
	public int selectCount(Connection conn) {
		
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql  = prop.getProperty("selectCount");
		
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
	

	public ArrayList<AdminInquire> selectList(Connection conn, PageInfo pi){
		
		ArrayList<AdminInquire> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("inqruireList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (pi.getCurrentPage()-1)*pi.getBoardLimit()+1); 
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new AdminInquire(rset.getInt("inq_no"),
									   	  rset.getString("inq_cate"),
										  rset.getString("inq_title"),
										  rset.getString("inq_content"),
										  rset.getDate("inq_create_date"),
										  rset.getString("inq_answer"),
										  rset.getString("email")));
							
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					close(pstmt);
					close(rset);
				}
				
				return list;
				
	}
	
	public int insertInquire(Connection conn, AdminInquire i) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertInquire");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i.getInqNo());
			pstmt.setString(2, i.getInqAnswer());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
		
	}

}
