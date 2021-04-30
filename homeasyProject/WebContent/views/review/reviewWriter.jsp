
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.order.model.vo.*"%>
    
    
<%

Order p = (Order)request.getAttribute("p");

String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</script>
<style>
    table,td,th{border: 1px solid lightgray;}
    textarea{
        width: 800px;
        height: 400px;
        font-size: 15px;
        resize: none;
    }
    
    .btn1{background-color: darkgrey;
                                color: white;
                                border: none;
                                border-radius: 3px;}

    .btn2{ background-color: gold;
                                color:white;
                                border: none;
                                border-radius: 3px;}
    .reviewBtn{
        width: 900px;
        height: 20px;
        text-align:center;
    } 
</style>
</head>
<body>
    <table  >

        <!-- 상단 리뷰쓰기 -->
        <tr style="height: 100px;">
            <th colspan="4"><h1>리뷰쓰기</h1></th>

        </tr>
        
        <!-- 회색바 -->
        <tr>
            <th style=" height: 40px; background-color: gray; 
                        color: white; border-radius: 5px;" colspan="4">
              			  베스트 리뷰 작성자에겐 추첨을 통해 쿠폰을 지급해드립니다.
            </th>
        </tr>

        <!--상품 목록  -->

        <tr style="height: 200px;">
            <td><img src=""
                     style="width:100px;">
            </td>
            <td colspan="4"><%= p.getProductName() %></td>
        </tr>

      <!-- 리뷰작성 -->
      <form action="">
        <tr>
            <th><h4>리뷰작성</h4></th>
            <td style="height: 30px; "></td>           
        </tr>
        <tr>
            <th colspan="6">
                <textarea placeholder="자세하고 솔직한 리뷰는 다른 고객에게 도움이 됩니다. "></textarea>
            </th>
        </tr>
     </form>
    </table>
        <div class="reviewBtn" >
            <a href="" class="btn btn-warning btn-sm">완료</a>
            <a class="btn btn-secondary btn-sm" >취소</a>
        </div>
</body>

</html>