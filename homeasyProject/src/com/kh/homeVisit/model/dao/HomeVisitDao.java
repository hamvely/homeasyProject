package com.kh.homeVisit.model.dao;

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
import com.kh.homeVisit.model.vo.HomeVisit;
import com.kh.qna.model.vo.Attachment;


public class HomeVisitDao {
   private Properties prop = new Properties();
   
   public HomeVisitDao() {
      
      String fileName = HomeVisitDao.class.getResource("/sql/homeVisit/homeVisit-mapper.xml").getPath();
   
      try {
         prop.loadFromXML(new FileInputStream(fileName));
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
   
   public ArrayList<HomeVisit> selectHomeVisitList(Connection conn) {
      
      ArrayList<HomeVisit> list = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      
      String sql = prop.getProperty("selectHomeVisitList");
      
      try {
         pstmt = conn.prepareStatement(sql);
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            
            list.add(new HomeVisit(rset.getInt("POST_NO"),
            					   rset.getString("POST_CONTENT"),
            					   rset.getString("NICKNAME"),
            					   rset.getString("USER_FILE_RENAME"),
            					   rset.getString("POST_FILE_RENAME"),
            					   rset.getString("PCOM_CONTENT")));
                  
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return list;
   }
   



   public int insertHvWrite(Connection conn, HomeVisit h) {
      
      int result = 0;
      PreparedStatement pstmt = null;
      String sql = prop.getProperty("insertHvWrite");
      
      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, h.getPostNo());
         pstmt.setString(2, h.getUserNo());
         pstmt.setString(3, h.getPostTitle());
         pstmt.setString(4, h.getPostContent());
         
         result = pstmt.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }
      
      return result;
   }
   
   public int insertHomeVisitAttachmentList(Connection conn, ArrayList<Attachment> list) {
      
      int result = 0;
      PreparedStatement pstmt = null;
      String sql = prop.getProperty("insertHomeVisitAttachmentList");
      
      try {
         
         for(Attachment at : list){
            
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, at.getPostFileNo());
            pstmt.setInt(2, at.getPostNo());
            pstmt.setString(3, at.getPostFileRename());
            
            result = pstmt.executeUpdate();
            
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(pstmt);
      }
      
      return result;
   }
   
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
   
   public ArrayList<HomeVisit> selectList(Connection conn, PageInfo pi){
      ArrayList<HomeVisit> list = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rset = null;
      String sql = prop.getProperty("selectList");
      
      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setInt(1, (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1);
         pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
         
         rset = pstmt.executeQuery();
         
         while(rset.next()) {
            list.add(new HomeVisit(rset.getInt("POST_NO"),
            					   rset.getString("EMAIL"),
            					   rset.getString("POST_TITLE"),
            					   rset.getDate("POST_CREATE_DATE"),
            					   rset.getInt("POST_COUNT")));
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         close(rset);
         close(pstmt);
      }
      
      return list;
      
   }
   
   public int increaseCount(Connection conn, int postNo) {
      // update문 => 처리된 행수
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
   public HomeVisit selectHomeVisit(Connection conn, int postNo) {
	   
	   HomeVisit h = null;
	   PreparedStatement pstmt = null;
	   ResultSet rset = null;
	   String sql = prop.getProperty("selectHomeVisit");
	   
	   try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, postNo);
		
		rset = pstmt.executeQuery();
		
		if(rset.next()) {
			h = new HomeVisit(rset.getInt("post_no"),
					          rset.getString("post_content"),
					          rset.getString("nickname"),
					          rset.getString("user_file_rename"),
					          rset.getString("post_file_rename"),
					          rset.getString("pcom_content"));
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(rset);
		close(pstmt);
	}
	   
	   return h;
   }
   
   //상세보기 첨부파일 조회
   public Attachment selectAttachment(Connection conn, int postNo) {
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