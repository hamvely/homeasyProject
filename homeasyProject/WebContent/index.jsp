<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    div{box-sizing: border-box;}
    /*div{outline:1px solid violet;}*/

    /* 윤곽 크기 */
    .wrap{width:1200px; height:1450px; margin:auto;}
    
    /* 컨텐츠 크기 */
    #content{height:1150px;}
    #content div{float:left;}

    /* 본문 크기 */
    #content_1{width:1100px; height:100%;}
/*--------------------------------------------------------------*/
    /* 리모콘 */
    #content_2{width:100px; height:100%;} 
    .main_right{
    	margin-top:30px;
        width:60px; 
        height:360px; 
        position:sticky; 
        top:0;
        float:left;
        margin-left:20px;
    }

    #right>div{
    	width:60px;
        background-color:rgb(237,237,237); 
        text-align: center;
        font-size:11px;
    }

    .right_1{
        height:60px; 
        line-height:60px; 
        cursor:pointer;
    }

    a,.right_2, .right_3{
        height:60px; 
        line-height:60px; 
        margin-top:1px; 
        cursor:pointer;
    }

    .right_4, .right_5, .right_6{
        height:60px; 
        line-height:30px; 
        margin-top:1px; 
        cursor:pointer;
    }
/*--------------------------------------------------------------*/
	/* 하단바  */
    #footer{height:200px;}
    #footer>div {height: 100%; float: left;}
    #footer_1 {width: 250px;}
    #footer_2 {width: 750px;}
    #footer_3 {width: 200px;}
    
    /* 주소, 이용약관 ...등등 */
    #footer_2> p{width: 100%; margin: 3px; }
    #p_1{height:20%; padding: 2px; font-size: 10px;}
    #p_1 > a{text-decoration: none; color: black; font-size: 10px; line-height: 18px;}

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
/*--------------------------------------------------------------*/    
    /* 컨텐츠 스타일 */
    p{font-size:20px; font-weight:bolder; margin-left:20px; margin-top: 20px;}

    #homeVisit{height:350px; width:100%;}
    #homeVisitContent{height:300px; display: flex; width:33%;}
    #homeVisitContent img{height:300px; display: block; margin:auto;}
    
    #product{height:300px; width:100%;}
    #productContent{height:250px; display: flex; width:25%;}
    #productContent img{height:250px; display: block; margin:auto;}
/*--------------------------------------------------------------*/
	/* 브라우저 마진과 패딩 리셋 */
	* {margin:0;padding:0;}

	/* INPUT 가리기 */
	.section [id*="slide"] {display:none;}
	
	/* 슬라이드 영역 - max-width 크기를 조절해주면 됩니다*/
	.section .slidewrap {max-width:1100px;height:500px;margin:0 auto;overflow:hidden;position:relative; /*margin-left:50px;*/}
	.section .slidelist {white-space:nowrap;font-size:0;}
	.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .3s;}
	.section .slidelist > li > a {display:block;position:relative;}

	/* 좌우로 넘기는 LABEL버튼에 대한 스타일 */
	.section .slide-control {position:absolute;top:0;left:0;z-index:10;width:100%;height:100%;}
	.section .slide-control label {position:absolute;z-index:1;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
	.section .slide-control .left {left:30px;background:url('./resources/img/icon/left.png') center center / 100% no-repeat;}
	.section .slide-control .right {right:30px;background:url('./resources/img/icon/right.png') center center / 100% no-repeat;}
	.section .slide-control [class*="control"] {display:none;}

	/* INPUT이 체크되면 변화값이 li까지 전달되는 스타일 */
	.section [id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
	.section [id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
	.section [id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
	
	/*  INPUT이 체크되면 변화값이 좌우 슬라이드 버튼을 담고 있는 div 까지 전달되는 스타일 */
	.section [id="slide01"]:checked ~ .slidewrap .control01 {display:block;}
	.section [id="slide02"]:checked ~ .slidewrap .control02 {display:block;}
	.section [id="slide03"]:checked ~ .slidewrap .control03 {display:block;}


</style>
</head>
<body>   
    <%@ include file="views/common/mainHeader.jsp" %>
    
    <br>
    
     <div class="wrap">

        <!-- 컨텐츠 -->
        <div id="content">
            <!-- 본문 -->
            <div id="content_1">
                
                <div class="section" style="height:500px;">
					<input type="radio" name="slide" id="slide01" checked>
					<input type="radio" name="slide" id="slide02">
					<input type="radio" name="slide" id="slide03">
					<div class="slidewrap">
						<ul class="slidelist">
							<!-- 슬라이드 영역 -->
							<li class="slideitem">
								<a><img src="resources/img/sample/main2.jpg" width="1100px"height="500px"></a>
							</li>
							<li class="slideitem">
								<a><img src="resources/img/sample/main1.jpg" width="1100px"height="500px"></a>
							</li>
							<li class="slideitem">
								<a><img src="resources/img/sample/main6.jpg" width="1100px"height="500px"></a>
							</li class="slideitem">
						</ul>
						
							
						<div class="slide-control">
							<div class="control01">
								<label for="slide03" class="left"></label>
								<label for="slide02" class="right"></label>
							</div>
							<div class="control02">
								<label for="slide01" class="left"></label>
								<label for="slide03" class="right"></label>
							</div>
							<div class="control03">
								<label for="slide02" class="left"></label>
								<label for="slide01" class="right"></label>
							</div>
						</div>
					</div>
				</div>



                <div id="homeVisit">
                    <div style="height:50px; width:100%;"><p>인기노하우</p></div>
                    <div id="homeVisitContent"><img src="resources/img/sample/knowhow (1).jpeg"></div>
                    <div id="homeVisitContent"><img src="resources/img/sample/knowhow (4).jpg"></div>
                    <div id="homeVisitContent"><img src="resources/img/sample/knowhow (12).jpg"></div>
                </div>
                
                <div id="product">
                    <div style="height:50px; width:100%;"><p>인기상품</p></div>
                    <div id="productContent"><img src="resources/img/sample/popular (5).png"></div>
                    <div id="productContent"><img src="resources/img/sample/popular (1).jpg"></div>
                    <div id="productContent"><img src="resources/img/sample/popular (3).jpg"></div>
                    <div id="productContent"><img src="resources/img/sample/popular (4).jpg"></div>
                </div>


            </div>

            <!-- 리모콘바 -->
            <div id="content_2">
	            <div class="main_right">
		         	<div id="right">
		            <div class="right_1"><a href="<%= contextPath %>/list.no?currentPage=1">공지사항</a></div>      
		            <div class="right_2"><a href="<%=contextPath%>/list.ho">집들이</a></div>
		            <div class="right_3"><a href="">스크랩북</a></div>   
		            <div class="right_4"><a href="">고객센터</a></div>
		            <div class="right_5"><a href="">1:1문의</a></div>   
		            <div class="right_6"><a href="">TOP</a></div>
		         	</div>
	      		</div>
            </div>
        </div>

        <!-- 하단바 -->
        <div id="footer">
        	  <!-- 로고 -->
            <div id="footer_1">  
                <a href="<%= contextPath %>/index.admin"><img src="resources/img/logo/logo (1).png" width="250px;" style="padding-top:50px;"></a>
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
                <p id="p_4">평일:9:00~18:00 <br>점심시간: 12:00~13:00 <br>(토/일/공휴일은 휴무)</p>        
            </div>
        </div>

    </div>
	
	
	
	
	
	
	<!-- --------------------------------------------- -->
	<script
      src="https://kit.fontawesome.com/6478f529f2.js"
      crossorigin="anonymous"
    ></script>
</body>
</html>