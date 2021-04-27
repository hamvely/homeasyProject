<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.inquire.model.vo.*"%>
    
<%
MyIn i = (MyIn)request.getAttribute("i");
	String contextPath = request.getContextPath();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
table,td,th{ border: 1px solid lightgray;
            text-align: center; font-size: 10px;}

.line {border-bottom: 1px solid lightgray;}

.btn-secondary {
    background-color:rgb(158, 158, 158); 
    border-color:rgb(158, 158, 158);
    height: 3px;
}


#Q1{
        background-color: white;
        width: 900px;
        height: 30px;
        line-height: 30px;
        text-align: center;
        border: 1px solid lightgray;
        border-radius: 10px;
        cursor: pointer;
    }
 #Q2{
        width: 900px;
        height: 100px;
        border: 1px solid lightgray;
        margin-top: 5px;
        padding: 10px;
        box-sizing: border-box;
        border-radius: 10px;
        display: none;
    }





</style>

</head>
<body>

    <table width="900px" height="1150px" >
        <thead>
            <tr  style="height: 150px; text-align: left;">
                <td class="line" colspan="5"><h1>1:1 문의 내역 </h1>
                    집이지 서비스에 대해 궁금하신 점을 문의 해주시면 친절하게 답변드리겠습니다. <br>
                    비회원의 경우, 문의 내용에 대한 답변을 못 받으신 경우에는 고객센터(1588-3333)로 문의해주시기 바랍니다.
                </td>
            </tr>
       
            <tr class="line" style="height:50px" >
                <th class="line"  colspan="3">문의하기 </th>
                <th class="line"  colspan="3">문의 내역 확인</th>
            </tr>

            <tr style="height: 10px;">
                <td colspan="5"></td>
            </tr>

            <tr style="height: 100px; width: 800px;">
                <th colspan="5" style=" height: 20px; background-color: lightgray; 
                             color: black; border-radius: 5px;" colspan="4" colspan="5">
                             
                             내가 작성한 문의 하기 <a href="" style="color: black;">2건</a>
                </th>
            </tr>

            <tr style="height: 10px;">
                <td class="line" colspan="5"></td>
            </tr>

            <tr style="height: 20px;">
                <th class="line">구분</th>
                <th class="line">제목</th>
                <th class="line" >작성일</th>
                <td class="line" colspan="2"></td>
               
                
            </tr>
            
            <tr id="Q1">
                <th>배송/배송일</th>
                <th><%= i.getInqTitle() %></th>
                <th><%= i.getInqCreateDate() %></th>
                <th>답변완료</th>
                <th><input type="button" class="btn btn-secondary"  value="-"></th>
            </tr>
            
              
            
            

            <tr id="Q2">
                <td colspan="5">
                    내일
                </td>
            </tr>
     
     
            <tr id="Q1">
                <th>배송/배송일</th>
                <th>가구색상이 다르게 배송</th>
                <th>2021.02.14</th>
                <th>대기</th>
                <th><input type="button" class="btn btn-secondary" value="-"></th>
                
            </tr>

            <tr id="Q2">
                <td colspan="5">
                   		 내일
                </td>
            </tr>
     
            <script>
                $(function(){
        
                    $("tr").click(function(){

                        var $th= $(this).next(); 
                        if($th.css("display") == "none"){
                            
                            $(this).siblings("th").slideUp();
                            $th.slideDown(); 

                        }else{
                            $th.slideUp(); 
                        }
        
                    })
                })
            </script>





    
</body>
</html>