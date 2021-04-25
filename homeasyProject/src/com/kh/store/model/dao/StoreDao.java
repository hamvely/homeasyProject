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
import com.kh.product.model.vo.ProductFile;
import com.kh.product.model.vo.ProductOption;

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
	
	public Product selectStore(Connection conn, int productNo) {
		// select문 => ResultSet객체 (한행)
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product(rset.getInt("product_no"),
							    rset.getString("product_brand"),
							    rset.getString("product_name"),
							    rset.getInt("product_price"),
							    rset.getString("product_detail"),
							    rset.getDate("product_date"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return p;
		
	}
	
	public ArrayList<ProductFile> selectProductFileList(Connection conn, int productNo){
		// select문 => ResultSet객체 (여러행)
		ArrayList<ProductFile> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductFile");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				ProductFile pf = new ProductFile();
				pf.setProductFileNo(rset.getInt("product_file_no"));
				pf.setProductFileRename(rset.getString("product_file_rename"));
				
				list.add(pf);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public ArrayList<ProductOption> selectProductOptionList(Connection conn, int productNo) {
		// select문 => ResultSet객체 (여러행)
		ArrayList<ProductOption> optionList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductOption");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ProductOption po = new ProductOption();
				po.setOptionNo(rset.getInt("option_no"));
				po.setProductNo(rset.getInt("product_no"));
				po.setOptionName(rset.getString("option_name"));
				po.setOptionPrice(rset.getInt("option_price"));
				po.setOptionStock(rset.getInt("option_stock"));
				
				optionList.add(po);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return optionList;
	}
	
}
