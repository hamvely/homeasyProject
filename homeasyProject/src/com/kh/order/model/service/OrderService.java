package com.kh.order.model.service;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.order.model.dao.OrderDao;
import com.kh.order.model.vo.Order;

public class OrderService {

	public ArrayList<Order> OrderList(){
		Connection conn = getConnection();
		
		ArrayList<Order> list = new OrderDao().OrderList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	public Order selectDetail(){
		Connection conn = getConnection();
		Order o = new OrderDao().selectDetail(conn);
		close(conn);
		return o;

	}

	public Order detailList() {
		Connection conn = getConnection();
	    Order d = new OrderDao().detailList(conn);
		
	    close(conn);
	    return d;
	}
	
}
