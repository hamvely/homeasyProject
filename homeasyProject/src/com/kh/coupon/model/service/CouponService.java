package com.kh.coupon.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.coupon.model.dao.CouponDao;
import com.kh.coupon.model.vo.Coupon;

public class CouponService {
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new CouponDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	public ArrayList<Coupon> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		ArrayList<Coupon> list = new CouponDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public int insertCoupon(Coupon c) {
		
		Connection conn = getConnection();
		
		int result = new CouponDao().insertCoupon(conn, c);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	public int deleteCoupon(int cp_no) {
		
		Connection conn = getConnection();
		int result = new CouponDao().deleteCoupon(conn, cp_no);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
		
	}
	
	public ArrayList <Coupon> selectCouponList(){
		Connection conn = getConnection();
		
	ArrayList<Coupon> list = new CouponDao().selectCouponList(conn);
		
		close(conn);
		return list;
	}
	
	

}



