package com.kh.qna.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.qna.model.dao.QnaDao;
import com.kh.qna.model.vo.Qna;

public class QnaService {

	public ArrayList<Qna> selectQnaList(){
		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().selectQnaList(conn);
		
		close(conn);
		
		return list;
	}
}
