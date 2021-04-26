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

	/* 공지사항 작성(관리자) */
	public int insertNotice(Notice n) {

		Connection conn = getConnection();	
		int result = new NoticeDao().insertNotice(conn, n);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	
	}
	
	/* 조회수 증가 */
	public int increaseCount(int noticeNo) {
		
		Connection conn = getConnection();
		int result = new NoticeDao().increaseCount(conn, noticeNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	/* 공지사항 상세(관리자) */
	public Notice selectNotice(int noticeNo) {
		Connection conn = getConnection();
		Notice n = new NoticeDao().selectNotice(conn, noticeNo);
		
		close(conn);
		return n;
	}

	public int deleteNotice(int noticeNo) {

		Connection conn = getConnection();
		int result = new NoticeDao().deleteNotice(conn, noticeNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
		
	
	}	
		
		
	

}
