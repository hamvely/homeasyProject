package com.kh.inquire.model.dao;
import static com.kh.common.JDBCTemplate.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.inquire.model.vo.MyIn;

public class MyInDao {
	
	private Properties prop = new Properties();
	
	public MyInDao() {
		
		String fileName = MyInDao.class.getResource("/sql/inquire/MyIn-mapper.xml").getPath();
		
		 try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public MyIn selectinquire(Connection conn) {
		
		MyIn i = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectinquire");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				i = new MyIn(rset.getString("inq_cate"),
							 rset.getString("inq_title"),
							 rset.getString("inq_content"),
							 rset.getDate("inq_create_date"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return i;
	}

		
	}
	
	

