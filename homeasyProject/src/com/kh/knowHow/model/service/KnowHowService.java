package com.kh.knowHow.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.knowHow.model.dao.KnowHowDao;
import com.kh.knowHow.model.vo.KnowHow;
import com.kh.knowHow.model.vo.KnowHowFile;

public class KnowHowService {
	
	public ArrayList<KnowHow> selectKnowHowList(){ 
		Connection conn = getConnection();
		
		ArrayList<KnowHow> list = new KnowHowDao().selectKnowHowList(conn);
		
		close(conn);
		
		return list;
	}

	public KnowHow selectKnowHow() {
		
		Connection conn = getConnection();
		
		KnowHow k = new KnowHowDao().selectKnowHow(conn);
		
		close(conn);
		
		return k;
		
	}
	
	// 작성자:임지우 - 노하우관리 리스트카운트조회
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new KnowHowDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;		
		
	}
	
	public ArrayList<KnowHow> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<KnowHow> list = new KnowHowDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
	}
	
	public int insertKnowHow(KnowHow k, KnowHowFile kf) {
		
		Connection conn = getConnection();
		
		// 두개의 테이블에 각각 insert
		int result1 = new KnowHowDao().insertKnowHow(conn, k); //KnowHow테이블에 insert하는 dao메소드
		
		int result2 = 1; // file테이블에 insert안될수있으니 1로 초기화(null일때도 insert되게)
		if(kf != null) { // 첨부파일 있을경우 KnowHowFile 테이블에 insert하는 dao메소드
			result2 = new KnowHowDao().insertKnowHowFile(conn, kf); //KnowHowFile 테이블에 insert하는 dao메소드
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1 * result2;
		
	}
	
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
	
	
	
	

}
