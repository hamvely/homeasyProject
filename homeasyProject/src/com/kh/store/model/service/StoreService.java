package com.kh.store.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductFile;
import com.kh.product.model.vo.ProductOption;
import com.kh.store.model.dao.StoreDao;

public class StoreService {
	
	public ArrayList<Product> selectStoreList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectStoreList(conn);
		
		close(conn);
		 
		return list;
		
	}
	
	public Product selectStore(int productNo) {
		Connection conn = getConnection();
		Product p = new StoreDao().selectStore(conn, productNo);
		close(conn);
		return p;
	}
	
	public ArrayList<ProductFile> selectProductFileList(int productNo) {
		Connection conn = getConnection();
		ArrayList<ProductFile> list = new StoreDao().selectProductFileList(conn, productNo);
		close(conn);
		return list;
	}
	
	public ArrayList<ProductOption> selectProductOptionList(int productNo) {
		Connection conn = getConnection();
		ArrayList<ProductOption> optionList = new StoreDao().selectProductOptionList(conn, productNo);
		close(conn);
		return optionList;
	}
	
}









