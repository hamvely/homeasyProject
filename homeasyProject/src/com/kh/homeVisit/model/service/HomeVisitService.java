package com.kh.homeVisit.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.homeVisit.model.dao.HomeVisitDao;
import com.kh.homeVisit.model.vo.HomeVisit;



public class HomeVisitService {

	public ArrayList<HomeVisit> selectHomeVisit() {
		Connection conn = getConnection();
		
		ArrayList<HomeVisit> list = new HomeVisitDao().selectHomeVisit(conn);
		
		close(conn);
		return list;
		
	}
	

	public ArrayList<Attachment> selectAttachmentList(int postNo){
		Connection conn = getConnection();
		ArrayList<Attachment> list = new HomeVisitDao().selectAttachmentList(conn, postNo);
		close(conn);
		return list;
	}


	public ArrayList<HomeVisit> adminHomeVisitList(){
		Connection conn = getConnection();
		
		ArrayList<HomeVisit> list = new HomeVisitDao().adminHomeVisitList(conn);
		
		close(conn);
		
		return list;
	}


	public int insertHomeVisitWrite(HomeVisit list, ArrayList<Attachment> at) {

		Connection conn = getConnection();
			
			int result1 = new HomeVisitDao().insertHvWrite(conn, list);
			int result2 = new HomeVisitDao().insertHomeVisitAttachmentList(conn, at);
			
			if(result1> 0 && result2>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result1 * result2;
			
		}

	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new HomeVisitDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	public ArrayList<HomeVisit> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<HomeVisit> list = new HomeVisitDao().selectList(conn, pi);
		close(conn);
		return list;
	}


	public int increaseCount(int postNo) {
		Connection conn = getConnection();
		int result = new HomeVisitDao().increaseCount(conn, postNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


	
	
	
}