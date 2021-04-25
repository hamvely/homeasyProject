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
	  <% } %>
   	
   		<table class="detailArea">
   			<tr>
   				<th width="58" height="50"><img src=""></th>
   				<td colspan="3">user01</td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<div>
   						<img src="homeasy/resources/fejio_upfiles/xxxxxx.jpg" width="220" height="220">
   					</div>
   				</td>
   			</tr>
   			<tr>
   				<th>좋아요</th>
   				<td></td>
   				<td>댓글창</td>
   			</tr>
   			<tr>
   				<td colspan="3">
   					<p style="height:50px;">xxxxxxxxxxxxxxxxxxxxxxxxx</p>
   				</td>
   			</tr>
   			<tr>
   				<th>user01</th>
   				<td>댓글입니다</td>
   			</tr>
   			<tr>
   				<th>user01</th>
   				<td>댓글입니다</td>
   			</tr>
   		</table>
		
	</div>
</body>
</html>