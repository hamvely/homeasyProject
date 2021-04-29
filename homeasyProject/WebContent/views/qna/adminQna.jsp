<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList, com.kh.qna.model.vo.Qna, com.kh.member.model.vo.Member, com.kh.common.model.vo.PageInfo"%>

<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");
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
            margin-top:-10px;

        }

        thead{
            background-color:#eaeaea;
            font-weight:bold;   
        }
        
        td{
            border-bottom:1px solid #ccc;
        }

		.header{float:left;}
		.wrap1{float:left; width:900px; height:800px; margin:20px;}
		
</style>
</head>
<body>
<div class="wrap">
	
	
	<div class="header">
	<%@ include file="../common/adminHeader.jsp" %>
	</div>        
	
	<div class="header">
	<%@ include file="../common/adminMenubar.jsp"%>
	</div>    
	    
	<div class="wrap1">
	        <h3 style="font-weight:600;">질문과답변 관리</h3>
	        <br>
	  	 <table class="table1" class="listArea" border="0" >
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
	            	<%for(Qna q : list){ %>
	                <tr>
	                    <td><%=q.getPostNo() %></td>
	                    <td><%=q.getEmail() %></td>
	                    <td><%=q.getPostTitle() %></td>
	                    <td><%=q.getPostCreateDate() %></td>
	                    <td><%=q.getPostCount() %></td>
	                </tr> 
	                <% } %>
	            </tbody>
	       </table>
	        <br>
	
	        <div align="center" class="pagingArea">

					<% if(currentPage != 1) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminList.qna?currentPage=<%= currentPage-1 %>';">이전</button>
					<% } %>
					
					<% for(int p=startPage; p<=endPage; p++) { %>
					
						<% if(currentPage == p) { %>
                    		<button disabled><%= p %></button>
                    	<% }else { %>
                    		<button onclick="location.href='<%= contextPath %>/adminList.qna?currentPage=<%= p %>';"><%= p %></button>
                    	<% } %>
                    
                    <% } %>
                    
                    <% if(currentPage != maxPage) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminList.qna?currentPage=<%= currentPage+1 %>';">다음</button>
					<% } %>
                </div>
		</div>

</div>
</body>
</html>