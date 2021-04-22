package com.kh.knowHow.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.knowHow.model.dao.KnowHowDao;
import com.kh.knowHow.model.vo.KnowHow;
import static com.kh.common.JDBCTemplate.*;

public class KnowHowService {
	
	public ArrayList<KnowHow> selectKnowHowList(){
		Connection conn = getConnecntion();
		
		ArrayList<KnowHow> list = new KnowHowDao().selectKnowHowList(conn);
		
		close(conn);
		
		return list;
	}

	private Connection getConnecntion() {
		return null;
	}
	
	

}
