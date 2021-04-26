package com.kh.store.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductCate1;
import com.kh.product.model.vo.ProductCate2;
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
	
	public ArrayList<ProductCate1> selectProductCate1List() {
		Connection conn = getConnection();
		ArrayList<ProductCate1> cate1List = new StoreDao().selectProductCate1List(conn);
		close(conn);
		return cate1List;
	}
	
	public ArrayList<ProductCate2> selectProductCate2List() {
		Connection conn = getConnection();
		ArrayList<ProductCate2> cate2List = new StoreDao().selectProductCate2List(conn);
		close(conn);
		return cate2List;
	}
	
	public Product totalPrice(int selectOptionNo) {
		Connection conn = getConnection();
		Product tp = new StoreDao().totalPrice(conn, selectOptionNo);
		close(conn);
		return tp;
	}
	
}









