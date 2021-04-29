<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->

    <style>
    table,td,th{ border: 1px solid lightgray;
                text-align: center;}
    
    .line {border-bottom: 1px solid lightgray;}





    </style>
</head>
<body>
    
    <table width="900px" height="1150px" >
     
            <tr  style="height: 150px; border-collapse:collapse; text-align: left;">
                <td class="line" colspan="5"><h1>1:1문의내역 </h1>
                	집이지 서비스에 대해 궁금하신 점을 문의 해주시면 친절하게 답변드리겠습니다.
                	비회원의 경으, 문의 내용에 대한 답변을 못받으신 경우에는 고객센터(1588-333)로 문의해주시기 바랍니다.<br>
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
                <th class="line"><h4>구분</h4></th>
                <th class="line"><h4>제목</h4></th>
                <th class="line" ><h4>작성일</h4></th>
                <td class="line" colspan="2"></td>
               
                
            </tr>

            
            <tr style="height: 50px;">
                <th>배송 / 배송일</th>
                <th>13일 주문건 일주일안에 배송 가능?</th>
                <th>2021.02.14</th>
                <th style="color: blue;"><h4>답변완료</h4></th>
                <th><input type="reset" value="-"></th>
            </tr>

            <tr style="height: 50px;">
                <td colspan="5">가능가능</td>
            </tr>


            <tr style="height: 50px;">
                <th>반품/교환</th>
                <th>가구 색상이 다르게 배송</th>
                <th>2021.03.30</th>
                <th style="color:red;"><h4>대기</h4></th>
                <th><input type="reset" value="-"></th>
                
            </tr>   

    </table>


    <script> 
        $(function(){

            $("th").click(function(){

                var $th = $(this).next(); 

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