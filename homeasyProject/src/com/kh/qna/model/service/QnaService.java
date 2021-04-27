package com.kh.qna.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.common.model.vo.PageInfo;
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
	
	public int selectAdminQnaListCount() {
		Connection conn = getConnection();
		int listCount = new QnaDao().selectAdminQnaListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Qna> selectAdminList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Qna> list = new QnaDao().selectAdminList(conn, pi);
		close(conn);
		return list;
	}
}
