package com.kh.homeVisit.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.homeVisit.model.dao.HomeVisitDao;
import com.kh.homeVisit.model.vo.HomeVisit;
import com.kh.qna.model.vo.Attachment;



public class HomeVisitService {

   public ArrayList<HomeVisit> selectHomeVisitList() {
      Connection conn = getConnection();
      
      ArrayList<HomeVisit> list = new HomeVisitDao().selectHomeVisitList(conn);
      
      close(conn);
      return list;
      
   }
   
   

   public int insertHomeVisitWrite(HomeVisit list, ArrayList<Attachment> at) {

      Connection conn = getConnection();
         
         int result1 = new HomeVisitDao().insertHvWrite(conn, list);
         int result2 = new HomeVisitDao().insertHomeVisitAttachmentList(conn, at);
         
         if(result1> 0 && result2>0) {
            commit(conn);
         }else {
            rollback(conn);
         }
         close(conn);
         
         return result1 * result2;
         
      }


   public int selectListCount() {
	   Connection conn = getConnection();
	   int listCount = new HomeVisitDao().selectListCount(conn);
	   
	   close(conn);
	   
	   return listCount;
	   
   }
   
   public ArrayList<HomeVisit> selectList(PageInfo pi){
	   Connection conn = getConnection();
	   ArrayList<HomeVisit> list = new HomeVisitDao().selectList(conn, pi);
	   close(conn);
	   return list;
   }

   public int increaseCount(int postNo) {
	   Connection conn = getConnection();
	   int result = new HomeVisitDao().increaseCount(conn, postNo);
			  
       if(result > 0) {
    	   commit(conn);
       }else {
    	   rollback(conn);
       }
	   
	   close(conn);
	   
	   return result;
   }
   
   //조회된 HomeVisit객체를 반환하는(상세보기)
   public HomeVisit selectHomeVisit(int postNo) {
	   Connection conn = getConnection();
	   HomeVisit h = new HomeVisitDao().selectHomeVisit(conn, postNo);
	   close(conn);
	   return h;
   }
   
   // 상세보기 파일 조회
   public ArrayList<Attachment> selectAttachment(int postNo) {
	   Connection conn = getConnection();
	   ArrayList<Attachment> list = new HomeVisitDao().selectAttachment(conn, postNo);
	   close(conn);
	   return list;
   }
   
}