<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.*"%>
<%
	ArrayList<Product> cList = (ArrayList<Product>)request.getAttribute("cList");
	ArrayList<ProductCate> cate2List = (ArrayList<ProductCate>)request.getAttribute("cate2List");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOMEASY</title>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
    .outer{
     	display:"flex";
        width:1200px;
        margin:auto;
        margin-top:10px;
    }
    .listArea{
        width:1200px;
        margin:auto;
    }
    .thumbnail{
        width:330px;
        height:400px;
        display:inline-block;
        margin:15px;
        margin-top:10px;
    }
    .thumbnail:hover{
        cursor:pointer;
        opacity:0.5;
    }
	.cate2nav{height: 50px;}
	.cate2nav a{margin-right: 20px;}
	.thumbnail p{margin-left: 25px; padding-top: 10px;}
</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
    <div class="outer">
        <br><!-- <h1>1차 카테고리 이름 가져오기</h1> -->
        </div>
            <div class="listArea" align="center">
				<div class="cate2nav">
					<% for(ProductCate pc : cate2List){ %>
						<a href="<%= contextPath %>/sortedList.st?cate1No=<%= pc.getCate1No() %>&cate2No=<%= pc.getCate2No() %>">
							<%= pc.getCate2Name() %>
						</a>
					<% } %>
				</div>
				<% for(Product p : cList){ %>
	            <div class="thumbnail" align="center">
	            	<input type="hidden" value="<%=p.getProductNo()%>">
					<input type="hidden" value="<%=p.getProductDate()%>">
					<input type="hidden" value="<%=p.getCate2No()%>">
	            	
	                <img src="<%= contextPath %>/<%= p.getTitleImg() %>" width="300" height="300">
	                <p align="left">
	                    <%= p.getProductBrand() %> <br>
	                    <%= p.getProductName() %><br>
	                   	<%= p.getProductPrice() %>
	                </p>
	            </div>
	            <% } %>
	            
	        </div>
        
        <script>
        	$(function(){
        		$(".thumbnail").click(function(){
        			location.href = '<%=contextPath%>/detail.st?pno=' + $(this).children().eq(0).val();
        		})
        	})
        </script>
    </div>
	<br><br><br>
</body>
</html>