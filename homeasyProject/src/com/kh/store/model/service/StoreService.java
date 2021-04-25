package com.kh.store.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.vo.Product;
import com.kh.store.model.dao.StoreDao;

public class StoreService {
	
	public ArrayList<Product> selectStoreList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectStoreList(conn);
		
		close(conn);
		 
		return list;
	}
}