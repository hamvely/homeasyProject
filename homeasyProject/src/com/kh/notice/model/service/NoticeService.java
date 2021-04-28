package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Notice;

public class NoticeService {

	/* 작성자 : 김혜미 */
	/* 공지사항 리스트조회(사용자)*/
	public ArrayList<Notice> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	/* 공지사항 리스트조회(관리자)*/
	public ArrayList<Notice> selectListAdmin(PageInfo pi) {

		Connection conn = getConnection();
		ArrayList<Notice> list = new NoticeDao().selectListAdmin(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	/* 공지사항 게시글 갯수(사용자) */
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	/* 공지사항 게시글 갯수(관리자) */
	public int selectListCountAdmin() {
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectListCountAdmin(conn);
		
		close(conn);
		
		return listCount;
	}

	/* 공지사항 상세(관리자) */
	public Notice selectNotice(int noticeNo) {
		Connection conn = getConnection();
		Notice n = new NoticeDao().selectNotice(conn, noticeNo);
		
		close(conn);
		return n;
	}
	
	
	
	
	
	
	
	
	/* 공지사항 작성 */
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

	/* 공지사항 삭제 */
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
	
	/* 공지사항 수정 */
	public int updateNotice(Notice n) {
		Connection conn = getConnection();
		int result = new NoticeDao().updateNotice(conn, n);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	/* 공지사항 조회수  */
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

	

	
	
	
	/* 작성자 : 장아영 */
	/*관리자 메인화면 박스 공지사항 리스트*/
	public ArrayList<Notice> selectNoticeListAdminMain(){
		Connection conn = getConnection();
		
		ArrayList<Notice> adminList = new NoticeDao().selectNoticeListAdmin(conn);
		
		close(conn);
		
		return adminList;
	}

	

	
	
		
	

}
