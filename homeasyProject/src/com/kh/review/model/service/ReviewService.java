package com.kh.review.model.service;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.review.model.dao.ReviewDao;
import com.kh.review.model.vo.Review;

public class ReviewService {

	public Review reviewList() {
		Connection conn = getConnection();
		Review r = new  ReviewDao().reviewList(conn);
		
		close(conn);
		return r;
		
	}
	
	
}
