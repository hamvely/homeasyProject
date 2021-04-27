package com.kh.notice.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.notice.model.vo.NoticeInquire;

public class NoticeInquireDao {
	
	private Properties prop = new Properties();
	
	public NoticeInquireDao() {
		
		String fileName = NoticeInquireDao.class.getResource("/sql/notice/noticeInquire.xml").getPath();
		
			try {
				prop.loadFromXML(new FileInputStream(fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
		
	}
	
	public ArrayList<NoticeInquire> inqruireList(Connection conn){
		
		ArrayList<NoticeInquire> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("inqruireList");
		
			try {
				pstmt  = conn.prepareStatement(sql);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					 
					list.add(new NoticeInquire(rset.getInt("inq_no"),
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
				close(rset);
				close(pstmt);
			}
			
			return list;
		
	}

}
