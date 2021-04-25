package com.kh.qna.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.qna.model.dao.QnaDao;
import com.kh.qna.model.vo.Attachment;
import com.kh.qna.model.vo.Qna;

public class QnaService {

	public ArrayList<Qna> selectQnaList(){
		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().selectQnaList(conn);
		
		close(conn);
		
		return list;
	}
	
	public int insertQnaWrite(Qna q, ArrayList<Attachment> list) {
		Connection conn = getConnection();
		
		int result1 = new QnaDao().insertQnWrite(conn, q);
		int result2 = new QnaDao().insertAttachmentList(conn, list);
		
		if(result1> 0 && result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1 * result2;
		
	}
	
	public ArrayList<Qna> adminQnaList(){
		Connection conn = getConnection();
		
		ArrayList<Qna> list = new QnaDao().adminQnaList(conn);
		
		close(conn);
		
		return list;
	}
}
