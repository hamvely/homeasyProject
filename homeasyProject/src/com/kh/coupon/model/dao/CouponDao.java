package com.kh.coupon.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.coupon.model.vo.Coupon;

public class CouponDao {
	
	private Properties prop = new Properties();
	
	public CouponDao() {

		String fileName = CouponDao.class.getResource("/sql/coupon/coupon-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream("fileName"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
		
	}
	
	public ArrayList<Coupon> selectList(Connection conn, PageInfo pi) {
		ArrayList<Coupon> list = new ArrayList<> ();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * (pi.getCouponLimit() + 1));
			pstmt.setInt(2, pi.getCurrentPage() * pi.getCouponLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Coupon(rset.getInt("cp_no"),
								    rset.getString("cp_name"),
								    rset.getInt("cp_price"),
								    rset.getInt("cp_condition"),
								    rset.getInt("cp_limit"),
								    rset.getString("cp_memo")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}

}
