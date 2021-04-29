package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductFile;

public class ProductService {
	
	// 상품관리 페이징
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	// 상품관리 리스트 조회
	public ArrayList<Product> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
				
	}
	
	// 상품등록 메소드
	public int insertProduct(Product p, ArrayList<ProductFile> list) {
		
		Connection conn = getConnection();
		
		int result1 = new ProductDao().insertPd(conn, p); // Product테이블 insert
		int result2 = new ProductDao().insertPdFileList(conn, list); // ProductFile테이블 insert
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);			
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2; // 결과 1 or 0 => 서블렛으로 반환
		
	}
	
	
	
	
	

}
