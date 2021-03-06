<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.product.model.vo.Product, com.kh.common.model.vo.PageInfo" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	
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
    }
    .btn-secondary {
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
        margin-right: 320px;
    }
    .product_category {
        height: 30px;
        margin-left: 10px;
    }

    /* ?????? ????????? ????????? ????????? */
    .product_list{
        text-align: left;
        font-size: 11px;
        width: 100%;
    }
    .product_list>tbody>tr:hover{
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
                    <a href="<%= contextPath %>/adminEnroll.pd" class="btn btn-secondary">????????????</a>
                </div>
                <br>

                <!-- ?????? ????????? ????????? -->
                <table align="center" class="product_list" style="overflow-x:auto;">
                	<thead>
	                    <tr>
	                        <th>????????????</th>
	                        <th>1?????????</th><!--2?????????????????????-->
	                        <th>2?????????</th>
	                        <th>?????????</th>
	                        <th>?????????</th>
	                        <th>??????</th>
	                        <th>?????????</th>
	                        <th>????????????</th>
	                    </tr>
                    </thead>
                    <tbody>
                    	<!-- ????????? ????????? ?????? ?????? -->
	                	<% if(list.isEmpty()) { %>
	                		<tr>
	                			<td colspan="8">????????? ???????????? ????????????.</td>
	                		</tr>
	                	<% }else { %>
	                	<!-- ????????? ????????? ?????? ?????? -->
	                		<% for(Product p : list) { %>
			                    <tr>
			                        <td><%= p.getProductNo() %></td>
			                        <td><%= p.getCate1Name() %></td>
			                        <td><%= p.getCate2Name() %></td>
			                        <td><%= p.getProductName() %></td>
			                        <td><%= p.getProductBrand() %></td>
			                        <td><%= p.getProductPrice() %></td>
			                        <td><%= p.getProductDate() %></td>
			                        <td><%= p.getProductStatus() %></td>
			                    </tr>
			                <% } %>
	                    <% } %>
                    </tbody>                                        
                </table>
                <br><br>

                <div align="center" class="pagingArea">

					<% if(currentPage != 1) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminlist.pd?currentPage=<%= currentPage-1 %>';">??????</button>
					<% } %>
					
					<% for(int p=startPage; p<=endPage; p++) { %>
					
						<% if(currentPage == p) { %>
                    		<button disabled><%= p %></button>
                    	<% }else { %>
                    		<button onclick="location.href='<%= contextPath %>/adminlist.pd?currentPage=<%= p %>';"><%= p %></button>
                    	<% } %>
                    
                    <% } %>
                    
                    <% if(currentPage != maxPage) { %>
                    	<button onclick="location.href='<%= contextPath %>/adminlist.pd?currentPage=<%= currentPage+1 %>';">??????</button>
					<% } %>
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