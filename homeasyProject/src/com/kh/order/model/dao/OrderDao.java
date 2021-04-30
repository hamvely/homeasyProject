package com.kh.order.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.order.model.vo.Order;

public class OrderDao {
	
	private Properties prop =new Properties();
	
	public OrderDao() {
		
		String fileName = OrderDao.class.getResource("/sql/order/order-mapper.xml").getPath();
		
			try {
				prop.loadFromXML(new FileInputStream(fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
	}
	
	public ArrayList<Order> OrderList(Connection conn){
	
		ArrayList<Order> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("OrderList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				list.add(new Order(rset.getInt("order_no"),
						 		   rset.getString("product_name")
						   			));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	
	public Order selectDetail(Connection conn){
		Order o = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDetail");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
			 o = new Order(   rset.getString("name"),
						      rset.getString("address"),
						      rset.getString("phone"),
						      rset.getString("order_memo"),
						      rset.getDate("buy_date"),
						      rset.getString("buy_method"),
						      rset.getInt("product_no"));
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		return o;

	}
	
	public Order detailList(Connection conn) {
		Order d = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("detailList");
		
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					d = new Order(rset.getString("product_name"),
							      rset.getString("product_price"));
				}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rset);
			}
			
			return d;
	}
	
	public Order selectReview(Connection conn) {
		Order p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReview");
		
			try {
				
				pstmt = conn.prepareStatement(sql);
				
				rset = pstmt.executeQuery();
				
				if(rset.next()) {
					p = new Order(rset.getString("product_name"));
							     
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rset);
			}
			return p;
	}
	
}
