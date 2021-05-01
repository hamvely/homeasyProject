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
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>재고관리</title>
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
        height: 35px;
    }

    .search_bar {
        display: flex;
    }
    .product_category {
        height: 30px;
        margin-left: 10px;
    }

    /* 상품 리스트 테이블 스타일 */
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
    <!-- 전체 화면 -->
    <div class="wrap">
        <!-- 상단바 -->
        <div id="header">
        	<%@ include file="../common/adminHeader.jsp" %>
        </div>

        <!-- 본문 전체 -->
        <div id="content">
            <!-- 좌측 메뉴바 -->
            <div id="content_1">
            	<%@ include file="../common/adminMenubar.jsp" %>
            </div>

            <!-- 우측 본문 -->
            <div id="content_2">

                <!-- 페이지 제목 -->
                <h3>재고관리</h3>

                <!-- 버튼 -->
                <div class="content_bar">
                    
                </div>
                <br>

                <!-- 상품 리스트 테이블 -->
                <table align="center" class="product_list" style="overflow-x:auto;">
                	<thead>
	                    <tr>
	                        <th>상품번호</th>
	                        <th>2차분류</th>
	                        <th>업체명</th>
	                        <th>상품명</th>
	                        <th>상품가격</th>
	                        <th>옵션명</th>
	                        <th>옵션가격</th>
	                        <th>옵션재고</th>
	                    </tr>
                    </thead>
                    <tbody>
                    	<!-- 조회된 결과가 없을 경우 -->
	                	<% if(list.isEmpty()) { %>
	                		<tr>
	                			<td colspan="8">조회된 리스트가 없습니다.</td>
	                		</tr>
	                	<% }else { %>
	                	<!-- 조회된 결과가 있을 경우 -->
	                		<% for(Product p : list) { %>
			                    <tr>
			                        <td><%= p.getProductNo() %></td>
			                        <td><%= p.getCate2Name() %></td>
			                        <td><%= p.getProductBrand() %></td>
			                        <td><%= p.getProductName() %></td>
			                        <td><%= p.getProductPrice() %></td>
			                        <td><%= p.getOptionName() %></td>
			                        <td><%= p.getOptionPrice() %></td>
			                        <td><%= p.getOptionStock() %></td>
			                    </tr>
			                <% } %>
	                    <% } %>
                    </tbody>                 
                </table>

                <br><br>

                <div align="center" class="pagingArea">
                    
                    <% if(currentPage != 1) { %>
                        <button onclick="location.href='<%=contextPath%>/adminlist.st?currentPage=<%=currentPage-1%>';">이전</button>
                    <% } %>
                    
                    <% for(int p=startPage; p<=endPage; p++) { %>
                        
                        <% if(currentPage == p){ %>
                            <button disabled><%= p %></button>
                        <% }else{ %>
                            <button onclick="location.href='<%=contextPath%>/adminlist.st?currentPage=<%= p %>';"><%= p %></button>
                        <% } %>
                        
                    <% } %>
                    
                    <% if(currentPage != maxPage){ %>
                        <button onclick="location.href='<%=contextPath%>/adminlist.st?currentPage=<%=currentPage+1%>';">다음</button>
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