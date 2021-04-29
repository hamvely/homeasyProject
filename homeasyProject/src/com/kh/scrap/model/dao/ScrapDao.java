package com.kh.scrap.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import static com.kh.common.JDBCTemplate.*;

public class ScrapDao {
	
	private Properties prop = new Properties();
	
	public ScrapDao() {
		
		String fileName = ScrapDao.class.getResource("/sql/scrap/scrap-mapper.xml").getPath();
		
		 	try {
				prop.loadFromXML(new FileInputStream(fileName));
			} catch (IOException e) {
				e.printStackTrace();
			}
	}

	public
}
