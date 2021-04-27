package com.kh.review.model.dao;

import static com.kh.common.JDBCTemplate.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import com.kh.order.model.vo.Order;
import com.kh.review.model.vo.Review;

public class ReviewDao {

	private Properties prop = new Properties();
	
	public ReviewDao() {
		String fileName = ReviewDao.class.getResource("/sql/review/review-mapper.xml").getPath();
	
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Review reviewList(Connection conn) {
		Review r = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("reviewList");
		
			try {
				pstmt = conn.prepareStatement(sql);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					r = new Review(rset.getString("product_name"),
								   rset.getString("product_brand"),
								   rset.getString("product_price"));
							
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(rset);
				close(pstmt);
			}
			return r;
	}
	

	
}
