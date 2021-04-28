package com.kh.store.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductCate;
import com.kh.product.model.vo.ProductFile;
import com.kh.product.model.vo.ProductOption;
import com.kh.store.model.dao.StoreDao;

public class StoreService {
	
	public ArrayList<Product> selectList(int cate1No) {
		
		Connection conn = getConnection();

		ArrayList<Product> list = new StoreDao().selectList(conn, cate1No);
		
		close(conn);
		 
		return list;
	}
	
	public ArrayList<ProductCate> selectCate2List(int cate1No) {
		
		Connection conn = getConnection();

		ArrayList<ProductCate> cate2List = new StoreDao().selectCate2List(conn, cate1No);
		
		close(conn);
		 
		return cate2List;
	}
	/*
	public ArrayList<Product> selectcList(int cate1No, int cate2No) {
		
		Connection conn = getConnection();

		ArrayList<Product> cList = new StoreDao().selectcList(conn, cate1No, cate2No);
		
		close(conn);
		 
		return cList;
	}
	*/
	
	
	
	
	
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
	
	public ArrayList<ProductCate> furnitureCate() {
		Connection conn = getConnection();
		ArrayList<ProductCate> cateList = new StoreDao().furnitureCate(conn);
		close(conn);
		return cateList;
	}
	
}









