<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.review.model.vo.Review, com.kh.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Homeasy Admin</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
    .search_bar {
        display: flex;
    }
    .search_text {
        width: 350px;
        height: 30px;
        margin-right: 355px;
    }
    .product_category {
        height: 30px;
        margin-left: 10px;
    }

    /* ?????? ????????? ????????? ????????? */
    .review_list{
        text-align: left;
        font-size: 11px;
        width: 100%;
    }
    .review_list>tbody>tr:hover{
        background:lightgray;
        cursor:pointer;
    }
    th, td {
        height: 40px;
        padding: 5px;
        border-bottom: 1px solid #ddd;
    }
    th {
        height: 40px;
        background-color: lightgray;
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

                <!-- ?????? ????????? ????????? -->
                <table align="center" class="review_list" style="overflow-x:auto;">
                	<thead>
	                    <tr>
	                        <th>?????? ??????</th>
	                        <th>?????????</th>
	                        <th>???????????????</th><!--2?????????????????????-->
	                        <th>?????? ??????</th>
	                        <th>?????? ??????</th>
	                    </tr>
                    </thead>
                    <tbody>
                    	<!-- ????????? ????????? ?????? ?????? -->
	                	<% if(list.isEmpty()) { %>
	                		<tr>
	                			<td colspan="5">????????? ???????????? ????????????.</td>
	                		</tr>
	                	<% }else { %>
	                	<!-- ????????? ????????? ?????? ?????? -->
		                	<% for(Review r : list) { %>
			                    <tr>
			                        <td><%= r.getReNo() %></td>
			                        <td><%= r.getProductName() %></td>
			                        <td><%= r.getEmail() %></td>
			                        <td><%= r.getReContent() %></td>
			                        <td><%= r.getReMark() %></td>
			                    </tr>
			                <% } %>
	                    <% } %>
                    </tbody>                              
                </table>
                <br><br>
                
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
                
                <script>
                	$(function() {
                		
                		$(".review_list>tbody>tr").click(function() {
                			
                			location.href = '<%= contextPath %>/adminDetail.re?rno=' + $(this).children().eq(0).text();
                			
                		})
                		
                	})
                </script>

            </div>
        </div>
    </div>
    


	<!-- ?????? ?????? ?????? -->
    <div class="modal" id="detailReview">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">?????? ??????</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                
                <!-- Modal body -->
                <div class="modal-body">
                    <form class="Review_content">
                        <table>
                            <tr>
                                <th>???????????????</th>
                                <td><input type="text" name="email" required></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>?????????</th>
                                <td><input type="text" name="product_name" required></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>????????????</th>
                                <td><input type="number" name="re_mark" required></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>????????????</th>
                                <td><input type="text" name="re_content" required></td>
                                <td></td>
                            </tr>
                        </table>
                    </form>
                </div>
                
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" style="background-color:darkgray;">??????</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal" data-toggle="modal" data-target="#deleteReview" style="background-color:rgb(241, 196, 15);">??????</button>
                </div>
        
            </div>
        </div>
    </div>

    <!-- ?????? ?????? ?????? -->
    <div class="modal" id="deleteReview">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
	            <div class="modal-header">
	                <h4 class="modal-title">????????????</h4>
	                <button type="button" class="close" data-dismiss="modal">&times;</button>
	            </div>
	            
	            <!-- Modal body -->
	            <div class="modal-body">
	               	????????? ?????? ?????????????????????????
	            </div>
	            
	            <!-- Modal footer -->
	            <div class="modal-footer">
	                <button type="submit" class="btn btn-success" data-dismiss="modal" style="background-color:rgb(241, 196, 15);">??????</button>
                	<button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color:darkgray;">??????</button>
	            </div>
        
            </div>
        </div>
    </div>

	
    <script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>

</body>
</html>