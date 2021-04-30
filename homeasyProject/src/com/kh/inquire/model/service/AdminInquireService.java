package com.kh.inquire.model.service;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.inquire.model.dao.AdminInquireDao;
import com.kh.inquire.model.vo.AdminInquire;
import static com.kh.common.JDBCTemplate.*;



public class AdminInquireService {
	
	
	public int selectCount() {
		Connection conn = getConnection();
		int listCount = new AdminInquireDao().selectCount(conn);
	
		close(conn);
		return listCount;
	}
	
	
	public ArrayList<AdminInquire> selectList(PageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<AdminInquire> list = new AdminInquireDao().selectList(conn, pi);
		close(conn);
		return list;
		
	}
	
	public int insertInquire(AdminInquire i) {
		Connection conn = getConnection();
		int result = new AdminInquireDao().insertInquire(conn, i);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	
	

}
