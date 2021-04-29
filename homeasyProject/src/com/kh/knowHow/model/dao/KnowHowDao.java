package com.kh.knowHow.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.knowHow.model.vo.KnowHow;
import com.kh.knowHow.model.vo.KnowHowFile;
import com.kh.qna.model.vo.Attachment;


public class KnowHowDao {

	private Properties prop = new Properties();
	
	public KnowHowDao() {
		
		String fileName = KnowHowDao.class.getResource("/sql/knowHow/knowHow-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<KnowHow> selectKnowHowList(Connection conn){
		
		ArrayList<KnowHow> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectKnowHowList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
						
			list.add(new KnowHow(rset.getInt("post_no"),
					             rset.getString("post_title"),
					             rset.getString("post_content"),
					             rset.getString("post_file_rename")));
						
			}
					
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
		
	
	// 작성자:임지우 - 노하우관리 리스트카운트 조회
	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
		
	}
	
	// 작성자:임지우 - 노하우관리 리스트조회
	public ArrayList<KnowHow> selectList(Connection conn, PageInfo pi) {
		
		ArrayList<KnowHow> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new KnowHow(rset.getInt("post_no"),
								     rset.getString("post_title"),
								     rset.getDate("post_update_date"),
								     rset.getInt("post_count"),
								     rset.getString("post_status")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;		
		
	}
	

	public int insertKnowHow(Connection conn, KnowHow k) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertKnowHow");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, k.getPostTitle());
			pstmt.setString(2, k.getPostContent());
			pstmt.setDate(3, k.getPostUpdateDate());
			//pstmt.setString(5, k.getPostStatus());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public int insertKnowHowFile(Connection conn, KnowHowFile kf) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertKnowHowFile");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kf.getPostFileRename());			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;		
		
	}

	
	public KnowHow selectKnowHow(Connection conn, int postNo) {
		
		KnowHow k = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectKnowHow");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {  // 뽑아서 knowhow객체에 담기 - 컬럼명제시
				k = new KnowHow(rset.getInt("post_no"),
								rset.getString("post_title"),
								rset.getDate("post_create_date"),
								rset.getInt("post_count"),
								rset.getString("post_status"),
								rset.getString("post_file_rename"),
								rset.getString("post_content"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return k;
		
	}
	
	public KnowHowFile selectKnowHowFile(Connection conn, int postNo) {
		
		KnowHowFile kf = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectKnowHowFile");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				kf = new KnowHowFile();
				kf.setPostFileNo(rset.getInt("post_file_no"));
				kf.setPostFileRename(rset.getString("post_file_rename"));
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return kf;
		
	}
	
	

	// 노하우 상세 게시글 카운트
	 public int increaseCount(Connection conn, int postNo) {

		 int result = 0;
	      PreparedStatement pstmt = null;
	      String sql = prop.getProperty("increaseCount");
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
			 pstmt.setInt(1, postNo);
	         
	         result = pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	      }
	      
	      return result;
	   }

	
	 
	 //상세보기
	 public KnowHow selectKnowHowPost(Connection conn, int postNo) {
		   
		   KnowHow k = null;
		   PreparedStatement pstmt = null;
		   ResultSet rset = null;
		   String sql = prop.getProperty("selectKnowHowPost");
		   
		   try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				k = new KnowHow(rset.getInt("POST_NO"),
								rset.getString("USER_FILE_RENAME"),
								rset.getString("NICKNAME"),
								rset.getString("POST_FILE_RENAME"),
						        rset.getString("POST_CONTENT"),
						        rset.getString("PCOM_CONTENT"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		   
		   return k;
	   }
	 
	//상세보기 첨부파일 조회
	 public ArrayList<Attachment> selectAttachment(Connection conn, int postNo) {
		   ArrayList<Attachment> list= new ArrayList<>();
		   PreparedStatement pstmt = null;
		   ResultSet rset = null;
		   String sql = prop.getProperty("selectAttachment");
		   
		   try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Attachment at = new Attachment();
				at.setPostFileNo(rset.getInt("post_file_no"));
			    at.setPostNo(rset.getInt("post_no"));
			    at.setPostFileRename(rset.getString("post_file_rename"));
			    
			    list.add(at);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		   
		   return list;
		   
	   }
}


