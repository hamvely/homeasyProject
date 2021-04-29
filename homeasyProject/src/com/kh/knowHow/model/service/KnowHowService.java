package com.kh.knowHow.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.knowHow.model.dao.KnowHowDao;
import com.kh.knowHow.model.vo.KnowHow;
import com.kh.qna.model.vo.Attachment;

import static com.kh.common.JDBCTemplate.*;

public class KnowHowService {
	
	// 작성자:장아영 - 노하우리스트 조회
	public ArrayList<KnowHow> selectKnowHowList(){ 
		Connection conn = getConnection();
		
		ArrayList<KnowHow> list = new KnowHowDao().selectKnowHowList(conn);
		
		close(conn);
		
		return list;
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
	
	// 노하우 상세 게시글 카운트
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

	
