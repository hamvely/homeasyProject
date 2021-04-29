package com.kh.scrap.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.scrap.model.dao.ScrapDao;
import com.kh.scrap.model.vo.Scrap;
import static com.kh.common.JDBCTemplate.*;

public class ScrapService {
	
	public ArrayList<Scrap> selectThumbnail();
		Connection conn = getConnection();
		
		ArrayList<Scrap> list = new ScrapDao().selectThumbnail(conn);
		close(conn);
		return list;
}
