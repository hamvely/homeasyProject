<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.homeVisit.model.vo.HomeVisit" import="com.kh.member.model.vo.Member"%>
<%
String contextPath = request.getContextPath();
%>

<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	ArrayList<HomeVisit> list = (ArrayList<HomeVisit>)request.getAttribute("list");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		.outer{
			border:1px solid gray;
            width:1100px;
            height:1150px;
            margin:auto;
            padding-top:20px;
        }
        
       .button{
            width:100px;
            height:35px;
            border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            margin-right:-10px;
        }
        
        .button1{
            width:100px;
            height:35px;border:1px;
            background-color:rgb(241, 196, 15);
            border-radius:5px;
            margin-right:-10px;
            float:right;
            margin-top:-35px;
            margin-right:10px;
        }
        
         .a1{
            text-decoration:none;
            color:white;
            text-align:center;
        }
        
        li{
            list-style-type:none;
            text-align:center;
            padding:8px;
            font-size:14px;
        }
        
        .thumbnail{
       		border:1px solid gray; 
        	width:220px;
        	display:inline-block;
        }
        
        img:hover{cursor:pointer;}
        

</style> 
</head>
<body>
	<div class="outer">
	   <div class="button">
	      <a href="" class="a1">
	          <div class="question">
	             <li>정렬</li>
	          </div>
	      </a>
	   </div>
	        
	  <% if(loginUser != null){ %>
	   <div class="button1">
		 <a href="<%=contextPath %>/write.ho" class="a1">
		    <div class="question">
		       <li>글쓰기</li>
		    </div>
 	     </a>
 	   </div>
	  <% } %><br><br>
   	
   		<div class="listArea">
   			<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		<div class="thumbnail" >
	   			<div class="user" style="float:left;">
		        	<img src="프로필유저이미지" width="48" height="49">
		        </div>
		        <h2 style="padding-top:">user01</h2>
	            <br><br>
	            
		   		<div class="thumbnail" style="margin-top:-60px;">
		   			<img src="해당게시글메인이미지경로" width="220" height="220">
		   		</div><br>
	   			
	   			<img class="heart" src="" width="48" height="49">
	   			<img class="chat" src="" width="48" height="49">
	   			
	   			<P>
	   			 내용입니다
	   			</P>
	   			
	   			<p>user01 댓글입니다</p>
	   		</div>
	   		
		</div>
		
	</div>
</body>
</html>