<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="java.util.ArrayList, com.kh.homeVisit.model.vo.HomeVisit, com.kh.member.model.vo.Member, com.kh.common.model.vo.PageInfo"%>

<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<HomeVisit> list = (ArrayList<HomeVisit>)request.getAttribute("list");
	Member loginUser = (Member)session.getAttribute("loginUser");

	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        .wrap{
            width:1200px;
            height:900px;
            margin:auto;
        }
        
        .content{
            margin-left:20px;
            margin-top:-5px;
        }

        .table1{
            width:960px;
            height:500px;
            text-align:center;
            border:solid #ccc;
            border-left:none;
            border-right:none;
        }

        thead{
            background-color:#eaeaea;
            font-weight:bold;   
        }
        
        td{
            border-bottom:1px solid #ccc;
        }
        
        .table1>tbody>tr:hover{
        	background:#ccc;
        	cursor:pointer;
        }
    </style>
</head>
<body>	
<table>
<div class="wrap">
    
  
	        <%@ include file="../common/adminHeader.jsp" %>
	
	        <%@ include file="../common/adminMenubar.jsp"%>
	        
        <table class="table1" class="listArea" border="0">	
        <%if(loginUser != null){ %>
	        <div class="content">
		        <h3 style="font-weight:600;">집들이 관리</h3>
		        <br>
		        <button type="button" class="btn btn-warning" style="color:white; width:100px; height:35px;">삭제</button>
		        <br><br>
	        </div>
	  	<% } %>
            <thead>
                <tr>
                    <td width="50" height="40">No.</td>
                    <td>회원 이메일</td>
                    <td>제목</td>
                    <td>작성일</td>
                    <td>조회수</td>
                </tr>
            </thead>
            <tbody>
      		<%for(HomeVisit h : list){ %>
              <tr>
                    <td><%=h.getPostNo()%></td>
                    <td><%=h.getEmail()%></td>
                    <td><%=h.getPostTitle()%></td>
                    <td><%=h.getPostCreateDate()%></td>
                    <td><%=h.getPostCount()%></td>
                </tr>           
        	<% } %>   
             </tbody>
    	</table>

        <br>
        
         <div align="center" class="pagingArea">

					<% if(currentPage != 1) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminList.ho?currentPage=<%= currentPage-1 %>';">이전</button>
					<% } %>
					
					<% for(int p=startPage; p<=endPage; p++) { %>
					
						<% if(currentPage == p) { %>
                    		<button disabled><%= p %></button>
                    	<% }else { %>
                    		<button onclick="location.href='<%= contextPath %>/adminList.ho?currentPage=<%= p %>';"><%= p %></button>
                    	<% } %>
                    
                    <% } %>
                    
                    <% if(currentPage != maxPage) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminList.ho?currentPage=<%= currentPage+1 %>';">다음</button>
					<% } %>
                </div>
        
        <script>
        	$(function(){
        		$(".listArea>tbody>tr").click(function(){
        			        					
        			location.href = '<%=contextPath%>/detail.ho?hno=' + $(this).children().eq(0).text();
        			
        		})
        	})
        
        </script>

	        <!--<div align="center" class="pageinArea">
	            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〈</p></button>
	            <button onclick="location.href='';" type="button" class="btn btn-warning" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">1</p></button>
	            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">2</p></button>
	            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">3</p></button>
	            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">4</p></button>
	            <button onclick="location.href='';" type="button" class="btn btn-light" style="width:25px; height:28px;"><p style="margin-left:-5px; margin-top:-5px;">〉</p></button>
	        </div>
			-->
   </div>
</table>	
</body>
</html>