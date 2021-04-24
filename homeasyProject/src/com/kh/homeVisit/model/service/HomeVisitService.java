package com.kh.homeVisit.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.homeVisit.model.dao.HomeVisitDao;
import com.kh.homeVisit.model.vo.HomeVisit;


public class HomeVisitService {

	public ArrayList<HomeVisit> selectHomeVisit(){
		Connection conn = getConnection();
	
		ArrayList<HomeVisit> list = new HomeVisitDao().selectHomeVisit(conn);
		
		close(conn);
		
		return list;
	}


	public ArrayList<HomeVisit> adminHomeVisitList(){
		Connection conn = getConnection();
		
		ArrayList<HomeVisit> list = new HomeVisitDao().adminHomeVisitList(conn);
		
		close(conn);
		
		return list;
	}
	
}
