
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.review.model.vo.*"%>
    
<%
	Review r = (Review)request.getAttribute("r");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

    .content div{float: left;}
    .product{margin-left:50px;} 
    .product div{
        margin: 50px 0 0 80px;
        font-size: 20px;
    }
   
</style>
</head>
<body>
    <%@ include file="../common/mainHeader.jsp" %>
    <br><br>
	
    
    <div class="wrap">
        <div class="line" id="header_1">
            <!-- 상단 리뷰내역 -->
            	<h2>나의 리뷰 내역</h2>                            
        </div>
        
    
        <div class="content">
            <div>
                <img style="width: 200px; height: 200px;" src="resources/product_upfiles/2021041607302500039.jpg">
            </div>
       
            <div class="product">
                <div><%= r.getBrand() %></div>
                <div><%=r.getName() %></div>
                <div><%= r.getPrice() %></div>
            </div>
        </div>
    
    

     </div>      

</body>

</html>