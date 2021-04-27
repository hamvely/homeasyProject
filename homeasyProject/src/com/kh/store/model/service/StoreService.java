package com.kh.store.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductCate;
import com.kh.product.model.vo.ProductFile;
import com.kh.product.model.vo.ProductOption;
import com.kh.store.model.dao.StoreDao;

public class StoreService {
	
	public ArrayList<Product> selectFurnitureList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectFurnitureList(conn);
		
		close(conn);
		 
		return list;
		
	}

	public ArrayList<Product> selectFabricList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectFabricList(conn);
		
		close(conn);
		 
		return list;
		
	}
	
	public ArrayList<Product> selectDecoList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectDecoList(conn);
		
		close(conn);
		 
		return list;
		
	}

	public ArrayList<Product> selectStorageList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectStorageList(conn);
		
		close(conn);
		 
		return list;
		
	}
	
	public ArrayList<Product> selectSuppliesList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectSuppliesList(conn);
		
		close(conn);
		 
		return list;
		
	}
	
	public ArrayList<Product> selectKitchenList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectKitchenList(conn);
		
		close(conn);
		 
		return list;
		
	}
	
	public ArrayList<Product> selectPetList() {
		
		Connection conn = getConnection();
		ArrayList<Product> list = new StoreDao().selectPetList(conn);
		
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
	
	public ArrayList<ProductCate> furnitureCate() {
		Connection conn = getConnection();
		ArrayList<ProductCate> cateList = new StoreDao().furnitureCate(conn);
		close(conn);
		return cateList;
	}
	
}









