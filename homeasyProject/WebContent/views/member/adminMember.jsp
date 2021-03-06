<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.member.model.vo.Member, com.kh.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>    

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Homeasy Admin</title>
<style>
    div {
        box-sizing: border-box;
    }
    .wrap {
        width: 1200px;
        height: 900px;
        margin: auto;
    }
    .wrap>div {
        width: 100%;
    }
    h3 {
    font-weight: bold;
    color: #2e363e;
    }
    
    #header>div, #content>div {
        float: left;
        height: 100%;
    }

    #header {
        height: 80px;
    }
    #content {
        height: 820px;
    }
    #content_1 {
        width: 200px;
    }
    #content_2 {
        width: 1000px;
        padding: 20px 10px;
    }
    .content_bar {
        box-sizing: border-box;
        display: flex;
        height: 40px;
    }
    .content_btn {
        background-color: rgb(241, 196, 15);
        width: 90px;
        height: 35px;
        font-size: 13px;
        font-weight: bold;
        color: white;
        border-radius: 3px;
        margin-right: 10px;
        border: none;
    }
    .content_btn:nth-child(2) {
        margin-right: 400px;
    }
    .search_text {
        width: 350px;
        height: 35px;
    }
    .member_search i {
        position: relative;
        top: 5px;
        left: 340px;
        width: 15px;
        height: 15px;
        font-size: 22px;
        color: rgb(3, 79, 6);
    }

    /* ?????? ?????? */
    .member_list{
        text-align: left;
        font-size: 11px;
        width: 100%;
    }
    .member_list>tbody>tr:hover{
        background:lightgray;
        cursor:pointer;
    }
    th, td {
        height: 45px;
        padding: 5px;
        border-bottom: 1px solid #ddd;
    }
    th {
        height: 45px;
        background-color: lightgray;
    }

    /* ???????????? */
    .pagination a {color:black;}

	.pagination a:hover, 
	.pagination a:focus {
	  background: lightgrey;
	  border-color: lightgrey;
	  color:black;
	}

</style>
</head>
<body>
    <!-- ?????? ?????? -->
    <div class="wrap">
        <!-- ????????? -->
        <div id="header">
        	<%@ include file="../common/adminHeader.jsp" %>
        </div>

        <!-- ?????? ?????? -->
        <div id="content">
            <!-- ?????? ????????? -->
            <div id="content_1">
            	<%@ include file="../common/adminMenubar.jsp" %>
            </div>

            <!-- ?????? ?????? -->
            <div id="content_2">

                <!-- ????????? ?????? -->
                <h3>????????????</h3>

                <!-- ?????? -->
                <div class="content_bar">
                    
                </div>
            
                <br>
                
                <!-- ?????? ????????? ????????? -->
                <table align="center" class="member_list" style="overflow-x:auto;">
                	<thead>
	                    <tr>
	                        <th>????????????</th>
	                        <th>???????????????</th>
	                        <th>????????????</th>

	                        <th>????????????</th>

	                        <th>?????????</th>
	                        <th>?????????</th>

	                        <th>?????????<br>??????</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<!-- ????????? ????????? ?????? ?????? -->
	                	<% if(list.isEmpty()) { %>
	                		<tr>
	                			<td colspan="12">????????? ???????????? ????????????.</td>
	                		</tr>
	                	<% }else { %>
	                	<!-- ????????? ????????? ?????? ?????? -->
	                		<% for(Member m : list) { %>
			                    <tr>
			                        <td><%= m.getUserNo() %></td>
			                        <td><%= m.getEmail() %></td>
			                        <td><%= m.getUserName() %></td>

	
			                        <td><%= m.getBirth() %></td>

			                        <td><%= m.getPhone() %></td>
			                        <td><%= m.getJoinDate() %></td>

			                        <td><%= m.getAdmin() %></td>
			                    </tr>
			                <% } %>
	                    <% } %>
                    </tbody>
                </table>

                <br><br>

                <ul class="pagination justify-content-center">

					<% if(currentPage != 1) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminlist.me?currentPage=<%= currentPage-1 %>';">??????</button>
					<% } %>
					
					<% for(int p=startPage; p<=endPage; p++) { %>
					
						<% if(currentPage == p) { %>
                    		<button disabled><%= p %></button>
                    	<% }else { %>
                    		<button onclick="location.href='<%= contextPath %>/adminlist.me?currentPage=<%= p %>';"><%= p %></button>
                    	<% } %>
                    
                    <% } %>
                    
                    <% if(currentPage != maxPage) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminlist.me?currentPage=<%= currentPage+1 %>';">??????</button>
					<% } %>
                    </ul>

                <!--
                <div align="center" class="pagingArea">

					<% if(currentPage != 1) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminlist.me?currentPage=<%= currentPage-1 %>';">??????</button>
					<% } %>
					
					<% for(int p=startPage; p<=endPage; p++) { %>
					
						<% if(currentPage == p) { %>
                    		<button disabled><%= p %></button>
                    	<% }else { %>
                    		<button onclick="location.href='<%= contextPath %>/adminlist.me?currentPage=<%= p %>';"><%= p %></button>
                    	<% } %>
                    
                    <% } %>
                    
                    <% if(currentPage != maxPage) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminlist.me?currentPage=<%= currentPage+1 %>';">??????</button>
					<% } %>
                </div>
                -->

                <script>
                	$(function() {
                		
                		$(".member_list>tbody>tr").click(function() {
                			
                			location.href = '<%= contextPath %>/adminDetail.me?uno=' + $(this).children().eq(0).text();
                			
                		})
                		
                	})
                </script>

            </div>
        </div>
    </div>


    


    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>