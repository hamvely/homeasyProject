package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notice.model.dao.NoticeInquireDao;
import com.kh.notice.model.vo.NoticeInquire;

public class NoticeInquireService {
	

	public ArrayList<NoticeInquire> inqruireList(){
	
		Connection conn = getConnection();
		
		ArrayList<NoticeInquire> list = new NoticeInquireDao().inqruireList(conn);
		
		
		close(conn);
		
		return list;
		
	}
	


}
