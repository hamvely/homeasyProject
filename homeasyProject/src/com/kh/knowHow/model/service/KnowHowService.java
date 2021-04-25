package com.kh.knowHow.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.knowHow.model.dao.KnowHowDao;
import com.kh.knowHow.model.vo.KnowHow;
import static com.kh.common.JDBCTemplate.*;

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
	
	
	

}
