package com.kh.like.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class LikeDao {
	
	private Properties prop = new Properties();
	
	// 기본생성자
	public LikeDao() {
		
		String fileName = LikeDao.class.getResource("/sql/Like-Like-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
