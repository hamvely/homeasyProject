package com.kh.knowHow.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.knowHow.model.dao.KnowHowDao;
import com.kh.knowHow.model.vo.KnowHow;
import com.kh.knowHow.model.vo.KnowHowFile;
import com.kh.qna.model.vo.Attachment;


public class KnowHowService {
	
	// 작성자:장아영 - 사용자 노하우리스트 조회
	public ArrayList<KnowHow> selectKnowHowList(){ 
		Connection conn = getConnection();
		
		ArrayList<KnowHow> list = new KnowHowDao().selectKnowHowList(conn);
		
		close(conn);
		
		return list;
	}

	
	// 작성자:임지우 - 관리자 노하우 조회수
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new KnowHowDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;		
		
	}
	
	// 작성자:임지우 - 관리자 노하우 리스트 조회
	public ArrayList<KnowHow> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<KnowHow> list = new KnowHowDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
	}	
	
	// 관리자 노하우 작성
	public int insertKnowHow(KnowHow k, KnowHowFile kf) {
		
		Connection conn = getConnection();
		
		int result1 = new KnowHowDao().insertKnowHow(conn, k);
		
		int result2 = 1;
		if(kf != null) {
			result2 = new KnowHowDao().insertKnowHowFile(conn, kf);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
		
	}		

	// 노하우 상세 게시글 조회수
	public int increaseCount(int postNo) { 

		Connection conn = getConnection();
		int result = new KnowHowDao().increaseCount(conn, postNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	
	public KnowHow selectKnowHow(int postNo) {
		
		Connection conn = getConnection();
		KnowHow k = new KnowHowDao().selectKnowHow(conn, postNo);
		close(conn);
		return k;
		
	}
	
	public KnowHowFile selectKnowHowFile(int postNo) {
		Connection conn = getConnection();
		KnowHowFile kf = new KnowHowDao().selectKnowHowFile(conn, postNo);
		close(conn);
		return kf;
	}
	
	public int deleteKnowHow(int postNo) {
		
		Connection conn = getConnection();
		int result = new KnowHowDao().deleteKnowHow(conn, postNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
		
	}
	
	

	
	// 노하우 상세 게시글 객체 반환
	public KnowHow selectKnowHowPost(int postNo) { 
		Connection conn = getConnection();
		KnowHow k = new KnowHowDao().selectKnowHowPost(conn, postNo);
		close(conn);
		return k;
	}
	
	// 상세보기 파일 조회
	public ArrayList<Attachment> selectAttachment(int postNo) {
		Connection conn = getConnection();
		ArrayList<Attachment> list = new KnowHowDao().selectAttachment(conn, postNo);
		close(conn);
		return list;
	}
}

	
