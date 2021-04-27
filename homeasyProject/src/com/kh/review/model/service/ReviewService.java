package com.kh.review.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import com.kh.common.model.vo.PageInfo;
import com.kh.review.model.dao.ReviewDao;
import com.kh.review.model.vo.Review;



public class ReviewService {


	public Review reviewList() {
		Connection conn = getConnection();
		Review r = new  ReviewDao().reviewList(conn);
		
		close(conn);
		return r;
		
	}
	
	

	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new ReviewDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
		
	}
	
	public ArrayList<Review> selectList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ReviewDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
		
	}


}
