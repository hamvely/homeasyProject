package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.dao.StockDao;
import com.kh.product.model.vo.Product;

public class StockService {
	
	public int selectStockListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new StockDao().selectStockListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	public ArrayList<Product> selectStockList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> list = new StockDao().selectStockList(conn, pi);
		
		close(conn);
		
		return list;
				
	}

}
