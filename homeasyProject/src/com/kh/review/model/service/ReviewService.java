package com.kh.review.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import com.kh.common.model.vo.PageInfo;
import com.kh.order.model.dao.OrderDao;
import com.kh.order.model.vo.Order;
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
	
//임지우 - 리뷰관리 상세보기
	public Review selectReview(int reNo) {
		
		Connection conn = getConnection();
		Review r = new ReviewDao().selectReview(conn, reNo);
		
		close(conn);
		return r;		
		
	}
	
	// 작성자:임지우 - 리뷰삭제
	public int deleteNotice(int reNo) {
		
		Connection conn = getConnection();
		int result = new ReviewDao().deleteNotice(conn, reNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	public Review selectReivew() {
		Connection conn = getConnection();
		Review r = new ReviewDao().selectReview(conn);
		close(conn);
		return r;
	}
	
	// 리뷰작성
	public int insertReview(Review r) {
		Connection conn = getConnection();
		
		int result = new ReviewDao().insertReview(conn, r);
	
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


}
