package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;

public class ProductService {
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new ProductDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	public ArrayList<Product> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
		
	}

}
