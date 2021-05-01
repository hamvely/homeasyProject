
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.order.model.vo.Order"%>
    
<%
ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");

String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>

    .table, th, td{ border: 0px solid lightgray; 
                    padding: 20px;
                    table-layout: fixed;
                    }
    .line{border-bottom: 1px solid lightgray;}

    img{width: 150px;}

    #pay, a{font-size: 20px; 
            text-decoration: none;
            color: black;
            text-align: center; 
                    }
    .btn1{background-color: darkgrey;
                                color: white;
                                border: none;
                                border-radius: 3px;}

    .btn2{ background-color: gold;
                                color:white;
                                border: none;
                                border-radius: 3px;}
    .btn-secondary {
    	background-color:rgb(158, 158, 158); 
    	border-color:rgb(158, 158, 158);
    }
    .btn-warning {
        background-color:rgb(241, 196, 15); 
    	border-color:rgb(241, 196, 15);
    }


</style>
</head>
<body>

    <table  width="900px" height="1150px" style="border-collapse:collapse;">
        
        <tbody>
            <tr class="line" >
                <h1 class="line"   style="width: 900px;" >주문 목록</h1>
            </tr>

            <tr class="line" id="pay" >
             
                <th>입금대기<br>
                    <a href="">0</a> 
                </th>
                <th>결제완료 <br>
                    <a href="">0</a>
                </th>
                <th>배송준비 <br>
                    <a href="">0</a>
                </th>
                <th>배송중 <br>
                    <a href="">0</a>
                </th>
                <th>배송완료 <br>
                    <a href="">0</a>
                </th>
                <th>구매확정 <br>
                    <a href="">0</a>
                </th></p>
            </tr>

            <tr class="line">
         
  
               <%for(Order o:list) { %>
                <td colspan="6" height="20px" value="productNo"><%=o.getProductNo() %></td>
            	</tr>
            
            <tr class="line">
                <th colspan="2"><img src="../resources/img/toy/toy1-main.jpg" alt=""></th>
                
                <th colspan="3"><%= o.getProductName() %></th>
           
               
                <th>
                    <a href="<%=contextPath %>/Order.de" class="btn btn-secondary">주문상세</a><br>
                    <a href="<%=contextPath %>/Review.wr" class="btn btn-warning">리뷰작성</a>
                </th>
                
            </tr>
            
           <% } %>

 







        </tbody>

        



       


    </table>



</body>

</html>