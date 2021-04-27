

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.order.model.vo.*"%>
<%
	Order o = (Order)request.getAttribute("o");
	
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
    .table, th, td {border: 0px solid lightgray; 
                    padding: 15px;}

    .line, td, th{border-bottom: 1px solid lightgray;}

    .btn-secondary {
    	background-color:rgb(158, 158, 158); 
    	border-color:rgb(158, 158, 158);
        
    }

    img{width: 150px;}

    #btn1, #btn2, #btn4{ background-color: darkgrey;
                        color: white;
                        border: none;
                        border-radius: 3px;}

    #btn3{ background-color: gold;
            color:white;
           border: none;
           border-radius: 3px;}
    
           
</style>
</head>
<body>

    
    <table width="900px" height="1150px" ">
        
        <td   colspan="8" style="width: 900px;">
            <h2>주문 상세 정보</h2>
        </td>
        <tr>
            <th colspan="1">주문일<br>(주문번호)</th>
            <th></th>
            <th colspan="2">상품명</th>
            
            <th colspan="2">결제금액</th>
        </tr>


          <!--결제 정보  -->
            <tr height="150px">
                <th><%= o.getBuyDate() %></th>
                <th> <img src="../resources/img/toy/toy7-main.jpg" alt=""> </th>
                <th colspan="2">전교1등 </th>
                <th colspan="2">100,000원</th>
            </tr>
			<tr  height="30px">
                <td colspan="6" style="color: darkgreen;"><h2>결제정보</h2></td>
                 
            </tr>
            <tr  height="35x">
                <td  class="line" style="width: 100px;"><p>주문일(주문번호)</p></td>
                <td  class="line" colspan="5">주문일자  <%= o.getBuyDate() %></td>
         
            </tr>
            <tr style="width: 100px;" height="35px">
                <td>결제방법</td>
                <td colspan="5"><%= o.getBuyMethod() %></td>
         
               
            </tr>
            <tr  style="width: 100px;" height="40px">
                <td>판매금액</td>
                <td colspan="5">100,000</td>
          
                
            </tr>
            <tr  style="width: 100px;" height="50px">
                <td><h5>구매금액</h5></td>
                <td colspan="4">100,000</td>
                
               
                <th> <a href="<%=contextPath%>/order.li" onclick="alert('영수증출력되었습니다.'); return false; " 
                            class="btn btn-secondary btn-sm">영수증출력</a></th>
               
            </tr>
            <tr >
                <td height="30px" style="color: darkgreen;"><h5>상품정보</h5></tdlass=>
                <th>수량</th>
                <th>상품금액</th>
                <th>할인금액</th>
                <th>구매금액</th>
                <th>배송비</th>            
            </tr>
            <tr >
                <td height="30px"><%= o.getProductNo() %></td>
                <th>수량</th>
                <th>100,000</th>
                <th>0</th>
                <th>100,000</th>
                <th>30,000</th>
            </tr>

            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th height="30px" >
                    <a href="<%=contextPath %>/order.li" onclick="alert('주문취소되었습니다.'); return false; " 
                        class="btn btn-secondary btn-sm" >주문취소</a>
                </th>
               
            </tr>

            <tr >
                
                <td height="50px" colspan="6" style="color: darkgreen;"><h3>주문자 /  배송조회</h3></td>
              
            </tr>
            <tr >
                <th height="50px">주문하시는분</th>
                <td colspan="5"><%= o.getName() %></td>
             
            </tr>
            <tr>
                <th height="50px" >받으시는분</th>
                <td colspan="5"><%= o.getName() %></td>
              
            </tr>
            <tr >
                <th height="50px">주소</th>
                <td colspan="5"><%= o.getAddress() %></td>
            </tr>
            <tr >
                <th height="50px">핸드폰</th>
                <td colspan="5"><%= o.getPhone() %></td>
            </tr>
            <tr >
                <th height="50px">요청사항</th>
                <td colspan="5"><%= o.getOrderMemo() %></td>
            </tr>
            <tr >
                <th height="35px" colspan="4"></th>
                <th></th>
                <th>
                    <a id="btn3" href="<%=contextPath%>/order.li" onclick="alert('주문내역출력되었습니다.'); return false; " 
                        class="btn btn-secondary btn-sm" >주문내역출력</a>
                        
                    <a href="<%=contextPath%>/order.li"  return false; " 
                            class="btn btn-secondary btn-sm" >목록</a>
                </th>
               
              
                
            </tr>
        </tbody>
    </table>


    

</body>

</html>