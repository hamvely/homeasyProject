package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* 작성자 : 김혜미 */

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String fileName = MemberDao.class.getResource("/sql/member/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	
	
}
