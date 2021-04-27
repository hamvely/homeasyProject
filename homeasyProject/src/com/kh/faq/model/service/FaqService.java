package com.kh.faq.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.faq.model.dao.FaqDao;
import com.kh.faq.model.vo.Faq;

public class FaqService {
	
	public ArrayList<Faq> selectListAll() {
		
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectListAll(conn);
		close(conn);
		return list;
	}
	
	public ArrayList<Faq> selectListPay() {
		
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectListPay(conn);
		close(conn);
		return list;
	}

	public ArrayList<Faq> selectListDel() {
	
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectListDel(conn);
		close(conn);
		return list;
	}
	
	public ArrayList<Faq> selectListCancel() {
		
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectListCancel(conn);
		close(conn);
		return list;
	}
	
	public ArrayList<Faq> selectListChange() {
		
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectListChange(conn);
		close(conn);
		return list;
	}
	
	public ArrayList<Faq> selectListEtc() {
		
		Connection conn = getConnection();
		ArrayList<Faq> list = new FaqDao().selectListEtc(conn);
		close(conn);
		return list;
	}
	
	public Faq selectFaq(int faqNo) {
		
		Connection conn = getConnection();
		Faq f = new FaqDao().selectFaq(conn, faqNo);
		close(conn);
		return f;
	}
	
}













