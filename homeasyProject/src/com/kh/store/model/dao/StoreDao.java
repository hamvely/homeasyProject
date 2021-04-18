package com.kh.store.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.vo.Product;

public class StoreDao {
	
	private Properties prop = new Properties();
	
	public StoreDao() {
		
		String fileName = StoreDao.class.getResource("/sql/store/store-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Product> selectStoreList(Connection conn) {
		// select문 => ResultSet객체 (여러행)
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Product p = new Product();
				p.setProductNo(rset.getInt("product_no"));
				p.setProductBrand(rset.getString("product_brand"));
				p.setProductName(rset.getString("product_name"));
				p.setProductPrice(rset.getInt("product_price"));
				p.setProductDate(rset.getDate("product_date"));
				p.setTitleImg(rset.getString("product_file_rename"));
				
				list.add(p);
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
