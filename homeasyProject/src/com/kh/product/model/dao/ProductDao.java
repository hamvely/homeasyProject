package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductFile;

public class ProductDao {
	
	private Properties prop = new Properties();
	
	public ProductDao() {
	
		String fileName = ProductDao.class.getResource("/sql/product/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	// 상품관리 페이징
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
	
	// 상품관리 리스트 조회
	public ArrayList<Product> selectList(Connection conn, PageInfo pi) {
		
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("product_no"),
									 rset.getString("cate1_name"),
									 rset.getString("cate2_name"),
									 rset.getString("product_name"),
									 rset.getString("product_brand"),
									 rset.getInt("product_price"),
									 rset.getDate("product_date"),
									 rset.getString("product_status")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	// 상품등록 -- Product테이블 insert
	public int insertPd(Connection conn, Product p) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getCate2Name());
			pstmt.setString(2, p.getProductName());
			pstmt.setString(3, p.getProductBrand());
			pstmt.setInt(4, p.getProductPrice());
			pstmt.setString(7, p.getProductStatus());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertPdFileList(Connection conn, ArrayList<ProductFile> list) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPdFileList");
		
		try {
			
			for(ProductFile pf : list) {
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pf.getProductFileOname());
				pstmt.setString(2, pf.getProductFileRename());

				result = pstmt.executeUpdate();
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}



