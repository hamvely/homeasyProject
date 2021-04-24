package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Notice;

public class NoticeService {

	/* 공지사항 리스트조회(사용자)*/
	public ArrayList<Notice> selectNoticeList(){
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn);
		
		close(conn);
		
		return list;
		
	}	
	
	/* 공지사항 리스트조회(관리자)*/
	public ArrayList<Notice> selectNoticeListAdmin(){
		Connection conn = getConnection();
		
		ArrayList<Notice> adminList = new NoticeDao().selectNoticeListAdmin(conn);
		
		close(conn);
		
		return adminList;
		
	}	
		
		
	

}
