<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{ outline: 1px solid black; box-sizing: border-box; }
    
    .wrap {width: 1200px; }
 
    #footer {height: 200px; }
    
    #footer>div {height: 100%; float: left;}
    #footer_1 {width: 250px;}
    #footer_2 {width: 750px;}
    #footer_3 {width: 200px;}
    
    /* 이미지 */
    img{ 
        display: block; 
        margin: auto; 
        padding: 50px;
    }
    
    /* 주소, 이용약관 ...등등 */
    #footer_2> p{width: 100%; margin: 3px; }
     #p_1{height:20%; padding: 2px; font-size: 10px;}
     #p_1 > a{
        text-decoration: none;
        color: black;
        font-size: 10px;
        line-height: 18px;
     }

    /* 고객센터 */
   #footer_3> p {width: 100%;  margin: 0;}
      #p_2 {font-weight: bold; font-size: 30px; text-align: center; }
      #p_3 {font-weight: bold; font-size: 30px; text-align: center; }
      #p_4 {font-size: 10px; text-align: center; }

     #p_2>a {
            font-weight: bold; 
            font-size: 25px; 
            letter-spacing: 2px;
            text-decoration: none;
            color: black;
            text-align: center;
            line-height: 60%;
            }
</style>
</head>
<body>
    <div class="wrap">

        <div id="footer">
            <!-- 로고 -->
            <div id="footer_1">  
                <a href=""><img src="resources/img/logo/logo1.png" style="width: 70%;"></a>
    
            </div>
            
            <!-- 이용약관, 회사주소 등등 -->
            <div id="footer_2">
                <p id="p_1">
                    <a href=""><br><br> 이용약관</a> | <a href="">개인정보취급방침</a> |
                    <a href="">영상처리방침</a> | <a href="">공지사항</a>
                    <br> <br>
                    상호명(주)집이지｜이메일(고객문의) cs@homeeasy.net｜(제휴문의) contact@homeeasy.net｜대표이사 : 집이지
                    사업자등록번호122-23-1872
                    <br>
                    통신판매업신고번호 제2018-서울서초-0580호｜주소 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F
                    <br><br> (주)집이지는 통신판매중개자로서 통신판매의 당사자가 아니며,
                    입점업체가 등록한 상품, 상품정보 및 거래에 대하여 (주)집이지는 일체 책임을 지지 않습니다. <br><br>
                    Copyright 2014. bucketplace, Co., Ltd. All rights reserved
                    </p>
            </div>
    
            <div id="footer_3">
                <!-- 고객센터 -->
                <p id="p_2"><a href=""><br> 고객센터</a></p>
                <p id="p_3">0318-0503</p>
                <p id="p_4">평일:9:00~18:00 <br>
                    점심시간: 12:00~13:00 <br>
                    (토/일/공휴일은 휴무)
                </p>        
            </div>
    
         </div>
    </div>
</body>
</html>