package com.kh.inquire.model.service;

import static com.kh.common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.inquire.model.dao.MyInDao;
import com.kh.inquire.model.vo.MyIn;

public class MyInService {
	
	public MyIn selectinquire() {
		Connection conn = getConnection();
		MyIn i = new MyInDao().selectinquire(conn);
		close(conn);
		return i;
		
		
	}
	
	
}
