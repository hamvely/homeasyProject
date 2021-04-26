<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product"%>
<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
    .outer{
        width:1200px;
        margin:auto;
        margin-top:10px;
    }
    .listArea{
        width:1200px;
        margin:auto;
    }
    .thumbnail{
        border:1px solid black;
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
</style>
</head>
<body>

	<%@ include file="../common/mainHeader.jsp" %>
    <div class="outer">
        <br>
        
        </div>
            <div class="listArea" align="center">
			
			<% for(Product p : list){ %>
            <div class="thumbnail" align="center">
            	<input type="hidden" value="<%=p.getProductNo()%>">
				<input type="hidden" value="<%=p.getProductDate()%>">
            	
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

</body>
</html>