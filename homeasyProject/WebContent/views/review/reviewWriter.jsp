<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/6478f529f2.js"crossorigin="anonymous">

</script>
<style>
    table,td,th{border: 1px solid lightgray;}

    textarea{
        width: 800px;
        height: 400px;
        font-size: 15px;
        resize: none;
    }

    #star a{ text-decoration: none; color: gray; } 
    #star a.on{ color: red; }


    #btn1{
        width: 70px;
        height: 30px;
         background-color: darkgrey;
         color: white;
         border: none;
         border-radius: 3px;}

    #btn2{
        width: 70px;
        height: 30px;
        background-color: gold;
        color:white;
        border: none;
        border-radius: 3px;} 

  
</style>
</head>
<body>
    <table width="900px" height="1150px" >

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
            <td><img src="../resources/img/toy/toy4-main.jpg"
                     style="width:100px;">
            </td>
            <td colspan="4">
                <h4>&nbsp; 강아지 장난감12345
                    <br>&nbsp; 색상 : 장난감
                </h4>
                
            </td>
        </tr>




        <!-- 별점 평가  -->
        <tr style="height: 50px; padding: 15px; font-size: 20px;" >
            <td colspan="5"><strong>별점평가</strong></td>
        </tr>

        <!-- 내구성 리뷰 -->
        <tr class="RatingStar">
            <th >내구성</th> 
            <th>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
            </th>

            <!-- 가격 리뷰  -->
            <th >가격</th>
                <th>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
                    <i class="far fa-star fa-3x"></i>
                </th>
        </tr>

        <!-- 디자인리뷰 -->
        <tr>
            <th>디자인</th>
            <th>
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
            </th>   

        
            <!-- 배송 리뷰 -->
            <th >배송</th>
            <th >
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
                <i class="far fa-star fa-3x"></i>
            </th>
        </tr>

      <!-- 리뷰작성 -->
        <tr>
            <td></td>
        </tr>
        <tr>
            <th><h4>리뷰작성</h4></th>
            <td colspan="4" style="height: 30px; "></td>           
        </tr>
        <tr>
            <th colspan="6">
                <textarea placeholder="자세하고 솔직한 리뷰는 다른 고객에게 도움이 됩니다. "></textarea>
            </th>
        </tr>

        <tr>
            <th colspan="4">
                <input id="btn2" type="button" value="완료">
                <input id="btn1" type="button" value="취소">
            </th>            
        </tr>
    </table>


    <script>
        $("i").on("click",function(){

            var $i = $(this).next();

        if($i.css("display")=="none"){
          $(this).css("backgroundColor", "Yellow").class("far");
        }else{
            $i.css("backgorundColor", "white").class("far");
        }
        })


    </script>
   

    



   

</body>
</html>